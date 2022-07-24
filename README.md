<h2>Assignment</h2<>>
- You will be working with `https://xkpasswd.net/s/`
- This website is a password creator for different scenarios

# Overview

This folder contains the automation for XKPasswd website
The framework is build using Cypress and Cucumber in javascript language

## Running cypress

- `npm install`
- `npm run cy:run` - This will run all the cypress test on the terminal with headless browser electron
- `npm run cy:run -- -s {path for feature file}`

## Debugging cypress issues

- `npm run cy:open` - This will allow the user to open up the cypress debugging tool to see where its failing
