import { Given, Then } from "cypress-cucumber-preprocessor/steps";

Given("I am on the landing page", () => {
  cy.visit("/");
});

Then("I can see titele as {string}", (value) => {
  cy.title().should("eq", value);
});
