# Home Assistant Community Add-ons

![Project Stage][project-stage-shield]
![Maintenance][maintenance-shield]
[![License][license-shield]](LICENSE.md)

[![GitLab CI][gitlabci-shield]][gitlabci]
[![Awesome][awesome-shield]][awesome]

[![Discord][discord-shield]][discord]
[![Community Forum][forum-shield]][forum]

## About

Home Assistant allows anyone to create add-on repositories to share their
add-ons for Home Assistant easily. This repository is one of those repositories,
providing extra Home Assistant add-ons for your installation.

The primary goal of this project is to provide you (as a Home Assistant user)
with additional, high quality, add-ons that allow you to take your automated
home to the next level.

## Installation

In general, there is no need to install this repository on your
Home Assistant instance. It is activated and added by Home Assistant
by default.

However, if the repository is missing on your setup, adding this add-ons
repository to your Home Assistant instance is pretty easy. In the
Home Assistant add-on store, a possibility to add a repository is provided.

Use the following URL to add this repository:

```txt
https://github.com/philipp-luettecke/hassio-addons
```

## Add-ons provided by this repository

### &#10003; [Jenkins Server][jenkins-addon]

![Latest Version][adb-version-shield]
![Supports armhf Architecture][adb-armhf-shield]
![Supports armv7 Architecture][adb-armv7-shield]
![Supports aarch64 Architecture][adb-aarch64-shield]
![Supports amd64 Architecture][adb-amd64-shield]
![Supports i386 Architecture][adb-i386-shield]
![Docker Pulls][adb-pulls-shield]

The Android Debug Bridge server program

[:books: Jenkins Server add-on documentation][addon-doc-adb]

[jenkins-addon]: https://github.com/philipp-luettecke/hassio-addons/tree/main/jenkins
[addon-doc-adb]: https://github.com/philipp-luettecke/hassio-addons/tree/main/jenkins/README.md
[adb-version-shield]: https://img.shields.io/badge/version-v0.5-blue.svg
[adb-pulls-shield]: https://img.shields.io/docker/pulls/philippluettecke/hassio-jenkins-armv7.svg
[adb-aarch64-shield]: https://img.shields.io/badge/aarch64-no-red.svg
[adb-amd64-shield]: https://img.shields.io/badge/amd64-no-red.svg
[adb-armhf-shield]: https://img.shields.io/badge/armhf-no-red.svg
[adb-armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[adb-i386-shield]: https://img.shields.io/badge/i386-no-red.svg
