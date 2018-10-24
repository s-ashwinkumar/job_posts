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

## Few points regarding solution
Considering the fact that there were no UI mocks given, I have created what I thought would be a quick yet usable UI
- There is one single landing page (/) which gives options of signing up or signing in as Applicants or employer
- Home page for both type of users is a list of jobs. But what is shown in the list and the actions allowed depend on the type of user.
- Show link on the job lists provides an apply button for user.

## Design decisions
- Have separate Employers and Applicants tables - It might not be a bad idea to use something like STI,
but the two user groups have completely different functionalities. So it is probably better idea to keep them separate.
- Authorization - Since the number of functionalities were less, considering the time to be spent, just cooked up authorization using Devise methods and did not use something like CanCan or Pundit.

## Deployment:
* Host : <http://ec2-52-53-213-3.us-west-1.compute.amazonaws.com:3000>
* Sample users : 
    - Employer - jimmy@zep.com / password1
    - Employer - rob@zep.com / password1
    - Applicant - john@zep.com / password1
    - Applicant - steve@zep.com / password1
    - Applicant - dave@zep.com / password1