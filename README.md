# README

# Production environment
It's hosted on a server from Railway.app

Production URL: https://fonix-production.up.railway.app

## Setup

### Prerequisites
- Postgres
- Ruby 3.3.6
- bundler 2.6.2
- Node

**Follow these steps to quickly get set up**
```
$ git clone git@github.com:spqr-praetoria/fonix_chat.git && cd fonix_chat

# install javascript dependencies
$ yarn install or npm install

# Create database, migrate and seed as well as install gems
$ bin/setup
```

The application should now be running :)

## Tech stack
- Ruby version v3.3.6
- Ruby On Rails v8.0.2
- Nodejs v22.14.0
- Tailwindcss 4
- DaisyUI 5
- Vite Rails (Hot module reloading)
- Hotwire (Turbo + Stimulus)
- Postgresql (Using UUID's so that records are not guessable)

## Authentication
- Devise

## Testing
- Rspec
- Factory bot
- Faker
- SimpleCov
- Shoulda matchers

## Emails
- (Development) - Letter opener
- (Production) - Gmail SMTP

## Queuing system
- Solid Queue
- Solid Cable
- Solid Cache

## Scheduled tasks (Cron)
- Railway.app built in

Task can be found in lib/tasks directory