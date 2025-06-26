const { defineConfig } = require("cypress");
module.exports = defineConfig({
 e2e: {
 baseUrl: 'http://localhost:5050/login',
 supportFile: false,
 specPattern: 'cypress/e2e/**/*.js'
 }
});
