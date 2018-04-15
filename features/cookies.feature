Feature: Cookies
  In order to keep information confidential
  cookies should be protected

  Scenario: Cookies should be set with "HttpOnly" flag (http)
  When user visits http
  Then cookies should be flagged with HttpOnly

  Scenario: Cookies should be set with "HttpOnly" flag (https)
  When user visits https
  Then cookies should be flagged with HttpOnly

  Scenario: Cookies received by https should be set with "secure" flag
  When user visits https
  Then cookies should be flagged with secure
