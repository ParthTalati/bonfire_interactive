import { And, Given, Then } from "cypress-cucumber-preprocessor/steps";

And("I can click on {string}", (element) => {
  cy.get(`#${element}`).click();
});

And(
  "I can click on dropdown {string} and change it to {string}",
  (element, value) => {
    cy.get(`#${element}`).select(value);
  }
);

And("I can click on preset button {string}", (value) => {
  cy.clearCookies();
  cy.get(`input[value=${value}]`).click();
  cy.wait(2000);
});

And("I can delete a chcrater in {string}", (element) => {
  cy.get(`input[id=${element}]`).clear();
});

And("I can add a chcrater {string} in {string}", (value, element) => {
  cy.wait(1000);
  cy.get(`input[id=${element}]`).type(value);
});

Then("I can see {string} has {string} passwords", (element, value) => {
  cy.get(`#${element}`).invoke("attr", "rows").should("eq", value);
});

Then("I can see {string} will not be empty", (element) => {
  cy.get(`#${element}`).not().should("be.empty");
});

Then("I can see {string} will have text as {string}", (element, value) => {
  cy.get(`#${element}`).contains(value);
});

Then("I can see {string} is disabled", (element) => {
  cy.get(`#${ele}`).should("be.disabled");
});
