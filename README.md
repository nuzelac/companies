# README

## Install

```
$ git clone https://github.com/nuzelac/companies
$ cd companies
$ bundle install
```

## Setup

Add company creation cronjob and seed companies:
```
$ whenever --update-crontab
$ rails db:seed
```

## Run

Run `rails server`
