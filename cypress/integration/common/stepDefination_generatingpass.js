import { And, Given, Then } from "cypress-cucumber-preprocessor/steps";
// import Selectors from "../../support/Selectors"

And("I can click on {string}", (element) => {
  cy.get(`#${element}`).click();
  
  // Selectors.query(element).click();
});

And(
  "I can click on dropdown {string} and change it to {string}",
  (element, value) => {
    cy.get(`#${element}`).select(value);
  }
);

And("I can click on preset button {string}", (value) => {
  // Probably a good idea to clear cookies at the start of execution in before block rather than here??
  cy.clearCookies();
  cy.get(`input[value=${value}]`).click();
  // We need to avoid explicit waits like this, and use a .should assertion instead
  cy.wait(2000);
});

//chcrater --> character
And("I can delete a chcrater in {string}", (element) => {
  // This deletes all the characters, if we need to delete just one character we need cy.type('{backspace}')
  cy.get(`input[id=${element}]`).clear();
});

And("I can add a chcrater {string} in {string}", (value, element) => {
  // Same as line no. 21
  cy.wait(1000);
  cy.get(`input[id=${element}]`).type(value);
});

Then("I can see {string} has {string} passwords", (element, value) => {
  cy.get(`#${element}`).invoke("attr", "rows").should("eq", value);
});

Then("I can see {string} will not be empty", (element) => {
  // Maybe we could use cy.get('').should('not.be.empty')
  cy.get(`#${element}`).not().should("be.empty");
});

Then("I can see {string} will have text as {string}", (element, value) => {
  cy.get(`#${element}`).contains(value);
});

Then("I can see {string} is disabled", (element) => {
  // This should be element here?
  cy.get(`#${ele}`).should("be.disabled");
});
