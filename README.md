# Deployer Bot

### Setup

1. Clone repo

```bash
git clone git@github.com:arsoedjono/qa-telegram-deploy-bot.git
cd qa-telegram-deploy-bot
```

2. Create gemset

```bash
rvm 2.3.1@qa-telegram-deploy-bot --create
```

3. Install bundler

```bash
gem install bundler
```

4. Install gems

```bash
bundle install
```

5. Copy env

```bash
cp env.sample .env
```

### Run Bot

1. Run bot

```bash
rake
```

2. Available commands `/start` and `/stop`
