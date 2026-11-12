# Brainstorm

- hashing passwords with bcrypt is best done in the controller, not in the validation/sanitization chain. There's just no point and it risks wasting resources from unnecessary hashing i.e. if the form is rejected but the password passes validation.
- PRG = POST/Redirect/GET pattern for handling failed validation.
  - Save the state using `req.session.somethingToSave = dataToBeSaved`
  - So, POST fails validation > save errors and invalid data to state > redirect to original page (triggers a GET) > write the GET in a way that it reads the req.session data and displays it.
  - However, NEVER save the password like this, since it would appear in plaintext in the body.
- passport.js creates the function req.login() and req.logout() which manage the session user.
  - Once sign-up is successful, I can log the user in directly using req.login(user, callback).
  - When the user clicks on log out, req.logout() logs them out. Very simple to use.
