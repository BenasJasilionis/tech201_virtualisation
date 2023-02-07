# DevOps and Development environments

## DevOps
devs -building projects that get deployed to dev environment
Production  environment is different
Opp- manage servers, products running, scaling servers as company grows
* Break silos between developers and operators
* Develop infrastructure as code
* Automation of deployment pipeline
* Work together more
* Continuous release cycles
* Automated testing throughout
Responsible for tying teams together in other areas of software development cycle
* DevOps emerged after development of cloud based tech - allowed for easier incremental developents
## Cloud
* Data centre
* Running 24/7
* Offer security - protect data of users
* Old drives that cant be verified to be 100% clean are crushed then shredded
* Need cooling for the servers -use water
* Before cloud would use a smaller version of a data centre on premise
* Cloud services are managed by large scale companies, rather than individual businesses
* Smaller business may not have the money to maintain the physical hardware, instead pay a fraction of the fee for a service
* Larger companies can afford to have more stringent security measures as compared to a small business
* On prem everything is managed by yourself
* With cloud, the providers can take a lot of the burden

## What problems do DevOps look to fix?
* **Ease of use** - Other teams are going to use the tools we create. They wont use them if they arent user friendly, might be good for them for the software development lifecycle can be an issue due to integration issues
* **Flexibility** - IT area moves very quickly, many companies spend years embedding software/systems into their operations, if that system becomes out of date it becomes hard to catch back up and incorporate the new tech. Need to ensure that the tools being used are easy to change and update along with changes in tech
* **Robustness** - Responsible for making sure that once the product is developed and tested it stays live. Need to eliminate all down-time if possible due to things like: server faults, bugs, cyber attacks.
* **Cost** - Ensure that the tech we use meets our needs at the lowest price possible. Maximise cost efficiency. For example: how powerful a machine do we need to conduct a task, do we need certain servers running etc. (solutions architect largely responsible)(junior engineers still need to know when to use a smaller machine for a task to maximise cost efficiency) (new position- cloud cost auditer- find out whats not being used and shut it down, but have to be careful, e.g. something may only be used once a year)

## Infrastructure and architecture
* **Monolith**- everything you need to run an app (sotrage,) all reside on the same physical machine - if theres an error with that machine, every service is hit
* **2 tier architecture**- 2 machines
* **Microservices** - breaking up the application as well as they way its sent out into users onto many machines. Containers allow us to implement a microservice architecture

## Risk register
* Highlight areas of risk within a system
* Helps organise priorities in regards to how likely something is to happen and how impactful it would be if it did happen
* Table : Description -> chance of occurence -> potential damage -> risk
* Important to properly evaluate risk of different issues and the chance of occurences happening for different business, e.g. banks more likely to receive cyber attacks than a small business

# Development environments
Area where developers can write their code, run their code( need packages, dependencies) and test their code
* DevOps engineers need to create dev environments
* Space on some machine that has all the required programs that the developer needs to write, run and test their code
* E.g. download python, add path
* Even though devs can make environments, DevOps engineers make the environments because they create the environment in a way that wont lead to integration issues further down the line
* DevOps engineers can standardise environments, make sure everyone is on the same system- makes collaboration easier

## What makes a good dev environment?
* Devs may need to use licenced software - DevOps engineer would have to evaluate most cost effective licence in relation to task requirements. 
* Dev environments may be monoliths due to ease of use which this provides. Further from production, the more user friendliness is important.
* Dev environments tend to be local, adding to security
* Virtualisation - use OS of one machine to create another OS within the machine and use it while having access to original OS
* **User friendly, fast and robust** - If the environment is hard to use or buggy, devs will use their own which cna lead to integration issues later on
* **Ease to update and change for DevOps engineer** - If the devs need something, should be easy for us to add, should always be green lit by DevOps engineer
* **Should match production environment as closely as possible**- Reduces the chance of having integration issues, dont want a dev environment that works differently to production environment
* **It should be the same for everyone everywhere** - Solve the issue of features working on some machines and not working on others- devs dont need to individually configure their machines, and it can be hard to find the one thing thats crashing your program
* **It should only support one application** - Can be tempting to make dev environment with the purpose of making several different applications, this has potential problems
1) Issue occurs if different applications require different versions of the language being used 
2) App 1 needs a program that conflicts with a program needed for app 2