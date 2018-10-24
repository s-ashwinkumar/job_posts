# README
##Requirements- 

An applicant should be able to:
* Log in with email and password. No email confirmation needed.
* See all available job openings for various employers.
* Job openings should contain a title and description and the employer name.
* Have a button to apply to a job opening they have not applied to before.
* An applicant should not be able to apply to the same job opening twice.

An employer should be able to:
* Log in with email and password. No email verification needed
* Create job openings.
* See all the applicants who applied to their job openings by name.

## Design Decisions
- Have separate Employers and Applicants tables - It might not be a bad idea to use something like STI,
but the two user groups have completely different functionalities. So it is probably better idea to keep them separate.
- Authorization - Since the number of functionalities were less, considering the time to be spent, just cooked up authorization using Devise methods and did not use something like CanCan or Pundit.
- 