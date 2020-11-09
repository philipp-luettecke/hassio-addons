# Home Assistant Add-on: Pilight Server

## Installation

Follow these steps to get the add-on installed on your system:

1. Navigate in your Home Assistant frontend to **Supervisor** -> **Add-on Store**.
2. Add the following link to the repositories list found in the menu in the top right corner `http://www.github.com/philipp-luettecke/hassio-addons
`
2. Find the "Pilight Server" add-on and click it.
3. Click on the `INSTALL` button.

#### **ATTENTION**: For now the Addon is only working on the Raspberry Pi with armhf architecture

## How to use

1. Install a 433 MHz transmitter and/or receiver to your Raspberry Pi. A documentation about this can be found [here][433mhz_tutorial].
   Connect the transmitter/receiver to the pins you like, but note the numbers according to the layout that can be found at [wiringx.org][wiringx], as they will be needed in the `sender` and `receiver` setting of the configuration.
1. Go to Configuration and enter the `gpio_platform` with a platform supported by [Pilight Platforms][pilight_platforms]
1. Adapt the `sender` and `receiver` options to the pins you selected in Step 1.
1. Finally set the port you want the Pilight Server to listen to new queries. Default is `5010`.

## Add-on Configuration

The Pilight server add-on can now be tweaked to your likings.

Setting the `debug` switch to true enables the debug output of the pilight daemon.

Example configuration:

```yaml
gpio_platform: raspberrypi3
hardware:
  sender: 0
  receiver: 1
debug: false
```


## Home Assistant Configuration

Pilight offers a [Home Assistant Integration][pilight-integration]. Please refer to this for the setup inside Home Assistant.

Example configuration:
```yaml
pilight:
  host: your.local.ip.address
    port: 5010
    send_delay: 0.4
```

## Support

Got questions?

- Join the [Reddit subreddit][reddit] in [/r/homeassistant][reddit]

In case you've found a bug, please [open an issue on our GitHub][issue].

[forum]: https://community.home-assistant.io
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg
[issue]: https://github.com/philipp-luettecke/hassio-addons/issues
[reddit]: https://reddit.com/r/homeassistant
[repository]: https://github.com/hassio-addons/repository
[pilight_platforms]: https://manual.pilight.org/configuration/settings.html#gpio-platform
[433mhz_tutorial]: https://tutorials-raspberrypi.com/control-raspberry-pi-wireless-sockets-433mhz-tutorial/
[wiringx]: https://www.wiringx.org/platforms/raspberrypi/index.html
[pilight-integration]: https://www.home-assistant.io/integrations/pilight/