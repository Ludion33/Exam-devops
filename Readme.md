# Devops exam - 3A WSF
## Maxime Groff

Link to the public Github repository of this project  : https://github.com/Ludion33/Exam-devops 

Here are the links for the 3 application's states : 
* [Development](https://devops-app-exam-development.herokuapp.com/ "Development").
* [Staging](https://devops-app-exam-staging.herokuapp.com/ "Staging").
* [Production](https://devops-app-exam-production.herokuapp.com/ "Production").


### Possible improvements : 

- [ ] Adding a .github file : set up a data structure for pull requests and issues. 
- [ ] Adding a tfvars.example.txt : new members might need to know the terraform.tfvars file structure. 
- [ ] Securing passwords and key informations with Vault.
- [x] Using the continuous deployment with Github Connect.
- [x] Protecting the main branch (development) so as not to risk pushing a wobbly version. 
- [ ] set up tests with [Travis CI](https://travis-ci.org/getting_started) so that every push is verified.  

### In order to enhance the workflow : 
Currently, there's only one branch on the development repository. Depending on the number of devs, we might need to create new branches, in order to keep a clean workflow. 

