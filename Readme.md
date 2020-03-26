# Status:
<p align="center">
  <a href="https://travis-ci.com/github/getOffIt/bowlingGameKata">
    <img src="https://img.shields.io/travis/com/getOffIt/bowlingGameKata?style=for-the-badge" alt="Build status" />
  </a>
  <a href="https://codecov.io/gh/getOffIt/bowlingGameKata">
  <img src="https://img.shields.io/codecov/c/github/getOffit/bowlingGameKata?style=for-the-badge" alt="codecov coverage" />
  </a>
</p>

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/62c00ede16484635a07d66af4c81a9e6)](https://www.codacy.com/manual/getOffIt/bowlingGameKata?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=getOffIt/bowlingGameKata&amp;utm_campaign=Badge_Grade)

[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=getOffIt_bowlingGameKata&metric=alert_status)](https://sonarcloud.io/dashboard?id=getOffIt_bowlingGameKata)
[![Bugs](https://sonarcloud.io/api/project_badges/measure?project=getOffIt_bowlingGameKata&metric=bugs)](https://sonarcloud.io/dashboard?id=getOffIt_bowlingGameKata)
[![Code Smells](https://sonarcloud.io/api/project_badges/measure?project=getOffIt_bowlingGameKata&metric=code_smells)](https://sonarcloud.io/dashboard?id=getOffIt_bowlingGameKata)
[![Coverage](https://sonarcloud.io/api/project_badges/measure?project=getOffIt_bowlingGameKata&metric=coverage)](https://sonarcloud.io/dashboard?id=getOffIt_bowlingGameKata)
[![Duplicated Lines (%)](https://sonarcloud.io/api/project_badges/measure?project=getOffIt_bowlingGameKata&metric=duplicated_lines_density)](https://sonarcloud.io/dashboard?id=getOffIt_bowlingGameKata)
[![Lines of Code](https://sonarcloud.io/api/project_badges/measure?project=getOffIt_bowlingGameKata&metric=ncloc)](https://sonarcloud.io/dashboard?id=getOffIt_bowlingGameKata)
[![Maintainability Rating](https://sonarcloud.io/api/project_badges/measure?project=getOffIt_bowlingGameKata&metric=sqale_rating)](https://sonarcloud.io/dashboard?id=getOffIt_bowlingGameKata)
[![Reliability Rating](https://sonarcloud.io/api/project_badges/measure?project=getOffIt_bowlingGameKata&metric=reliability_rating)](https://sonarcloud.io/dashboard?id=getOffIt_bowlingGameKata)
[![Security Rating](https://sonarcloud.io/api/project_badges/measure?project=getOffIt_bowlingGameKata&metric=security_rating)](https://sonarcloud.io/dashboard?id=getOffIt_bowlingGameKata)
[![Technical Debt](https://sonarcloud.io/api/project_badges/measure?project=getOffIt_bowlingGameKata&metric=sqale_index)](https://sonarcloud.io/dashboard?id=getOffIt_bowlingGameKata)
[![Vulnerabilities](https://sonarcloud.io/api/project_badges/measure?project=getOffIt_bowlingGameKata&metric=vulnerabilities)](https://sonarcloud.io/dashboard?id=getOffIt_bowlingGameKata)


# bowling


Having fun playing with the Kata from http://codingdojo.org/kata/Bowling/

Supports: iOS 11.3 and above

## Branches:

* master - stable app releases
* develop - development branch, merge your feature branches here

## Dependencies:

The project is using cocoapods for managing external libraries and a Gemfile for managing the cocoapods version.

Get Bundler

```
sudo gem install bundler
```

To install the specific cocoapods version run

```
bundle install
```

Then install the pods

```
bundle exec pod install
```

### Core Dependencies

* Swiftlint - A tool to enforce Swift style and conventions.
* R.swift - Get strong typed, autocompleted resources like images, fonts and segues in Swift projects

## Project structure:

* Resources - fonts, strings, images, generated files etc.
* SupportingFiles - configuration plist files
* Models - model objects
* Modules - contains app modules (UI + Code)
* Helpers - protocols, extension and utility classes
