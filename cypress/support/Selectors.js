
class Selectors {
    static query(webElement) {
        switch (webElement) {
            case 'Generate Button': return cy.get('#generate_password_btn')
        }
    }
}

export default Selectors;