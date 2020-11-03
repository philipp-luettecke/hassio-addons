import sys
from time import sleep
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

URL = "https://studien-sb-service.th-mittelhessen.de/docu/online.html"

chrome_options = Options()
chrome_options.add_argument("--headless")
chrome_options.add_argument("--disable-gpu")

user = sys.argv[1]
password = sys.argv[2]
webhook = sys.argv[3]
scan_interval = sys.argv[4]

while True:
    driver = webdriver.Chrome("/chromedriver", options=chrome_options)
    driver.get(URL)

    try:

        driver.switch_to.frame(driver.find_element_by_name("inhalt"))
        username = driver.find_element_by_id("asdf")
        password = driver.find_element_by_id("fdsa")

        username.clear()
        username.send_keys(user)
        password.clear()
        password.send_keys(password)

        driver.find_element_by_name("submit").click()

        # navigate to Pruefungsverwaltung
        pruefungsverwaltung = WebDriverWait(driver, 5).until(EC.visibility_of_element_located((By.XPATH, "//*[@id='makronavigation']/ul/li[3]/a")))
        pruefungsverwaltung.click()

        # navigate to Leistungsuebersicht
        driver.find_element_by_xpath("//*[@id='wrapper']/div[6]/div[2]/div/form/div/ul/li[4]/a").click()

        # navigate to Master of Science
        driver.find_element_by_xpath("//*[@id='wrapper']/div[6]/div[2]/form/ul/li/a[1]").click()

        # click on info for table view
        driver.find_element_by_xpath("//*[@id='wrapper']/div[6]/div[2]/form/ul/li/ul/li/a[1]").click()

        # get table and rows
        table = driver.find_element_by_xpath("//*[@id='wrapper']/div[6]/div[2]/form/table[2]")
        rows = table.find_elements(By.TAG_NAME, "tr")

        grades = {}
        for row in rows:
            cells = row.find_elements(By.TAG_NAME, "td")
            if len(cells) > 6:
                print(row.text)
                module = {
                    "number": cells[0].text,
                    "description": cells[1].text,
                    "semester": cells[2].text,
                    "grade": cells[3].text,
                    "percentage": cells[4].text,
                    "state": cells[5].text,
                    "credits": cells[6].text
                }
                grades[module['number']] = module
        print(grades)
    finally:
        driver.quit()
        sleep(scan_interval)
