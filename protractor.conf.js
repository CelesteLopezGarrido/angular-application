const puppeteer = require('puppeteer');

exports.config = {
  capabilities: {
    browserName: 'chrome',
    chromeOptions: {
      args: ['--headless'],
      binary: puppeteer.executablePath(),
    },
  },
};