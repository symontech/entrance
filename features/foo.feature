Feature: Foo
  In order to interact with the application
  a website should appear
  
  Scenario: Cookies should be set with HttpOnly flag (http)
  When user visits http://www.google.ch
  Then cookies should be set with HttpOnly
  
  Scenario: Cookies should be set with HttpOnly flag (https)
  When user visits https://www.google.ch
  Then cookies should be set with HttpOnly
  
  Scenario: Cookies received by https should be set with Secure flag
  When user visits https://www.google.ch
  Then cookies should be set with Secure
  