# Home Assistant Add-on: Jenkins

## Installation

Follow these steps to get the add-on installed on your system:

1. Navigate in your Home Assistant frontend to **Supervisor** -> **Add-on Store**.
2. Add the following link to the repositories list found in the menu in the top right corner `http://www.github.com/philipp-luettecke/hassio-addons
`
2. Find the "Jenkins Server" add-on and click it.
3. Click on the `INSTALL` button.

#### **ATTENTION**: For now the Addon is only working on the Raspberry Pi with armhf architecture

## How to use

1. Start the Addon by clicking the `START` button
2. Wait for the initialization to complete
3. In the Log section of the Addon you will find the Initial Password looking something like
    ```
    *************************************************************
    Jenkins initial setup is required. An admin user has been created and a password generated.
    Please use the following password to proceed to installation:
    c1bf18925a054d49b71d7f8910d62e02
    This may also be found at: /jenkins/secrets/initialAdminPassword
    *************************************************************
    ```
4. Copy this password to the WebUi reachable via the `WEBUI` Button
5. Proceed with the setup of Jenkins 

## Add-on Configuration

The Jenkins server add-on can by now not be tweaked to your likings. In the future this section
describes each of the add-on configuration options.


## Home Assistant Configuration

The Jenkins Server will run independently from the Home Assistant instance. No further adaptations needed here.


## Support

Got questions?

- Join the [Reddit subreddit][reddit] in [/r/homeassistant][reddit]

In case you've found a bug, please [open an issue on our GitHub][issue].

[forum]: https://community.home-assistant.io
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg
[issue]: https://github.com/philipp-luettecke/hassio-addons/issues
[reddit]: https://reddit.com/r/homeassistant
[repository]: https://github.com/hassio-addons/repository