# DevOps and Development environments

## DevOps
* Devs -building projects that get deployed to dev environment
* Production  environment is different
* Opp- manage servers,  insure products are running, scaling servers as company grows

DevOps engineers aim to achieve the following:

* Break silos between developers and operators
* Develop infrastructure as code
* Automation of deployment pipeline
* Work together more
* Continuous release cycles
* Automated testing throughout


DevOps engineers are esponsible for tying teams together in other areas of software development cycle. DevOps emerged after development of cloud based tech which allowed allowed for easier incremental developents
## Cloud
The `cloud` refers to servers that are accessed over the Internet, and the software and databases that run on those servers. Below are some characteristics and advantages of using `cloud` services:
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
* **Ease of use** - Other teams are going to use the tools we create. They wont use them if they arent user friendly, might be good for them for the software development lifecycle can be an issue due to integration issues between the developer environment and production environment.
* **Flexibility** - IT area moves very quickly, many companies spend years embedding software/systems into their operations, if that system becomes out of date it becomes hard to catch back up and incorporate the new tech. Need to ensure that the tools being used are easy to change and update along with changes in tech.
* **Robustness** - Responsible for making sure that once the product is developed and tested it stays live. Need to eliminate all down-time if possible due to things like: server faults, bugs, cyber attacks.
* **Cost** - Ensure that the tech we use meets our needs at the lowest price possible. Maximise cost efficiency. For example: how powerful a machine do we need to conduct a task, do we need certain servers running etc. Solutions architects are largely responsible for this but junior engineers still need to know when to use a smaller machine for a task to maximise cost efficiency. A new position in the are is known as a cloud cost auditer and this is someone who finds out whats not being used and shuts it down. Have to be careful when deciding what to shut down, e.g. something may only be used once a year)

## Infrastructure and architecture
* **Monolith**- everything you need to run an app (storage,) all reside on the same physical machine - if theres an error with that machine, every service is hit
* **2 tier architecture**- 2 machines
* **Microservices** - breaking up the application as well as the way it sends out information to users onto many machines. Containers allow us to implement a microservice architecture

## Risk register
* Highlight areas of risk within a system
* Helps organise priorities in regards to how likely something is to happen and how impactful it would be if it did happen
* Table : Description -> chance of occurence -> potential damage -> risk
* Important to properly evaluate risk of different issues and the chance of occurences happening for different business, e.g. banks more likely to receive cyber attacks than a small business

# Development environments
Area where developers can write their code, run their code( need packages, dependencies) and test their code -> needs to have all the requirements the devs need to complete their task
* DevOps engineers need to create dev environments
* Space on some machine that has all the required programs that the developer needs to write, run and test their code
* E.g. download python, add path
* Even though devs can make environments, DevOps engineers make the environments because they create the environment in a way that wont lead to integration issues further down the line
* DevOps engineers can standardise environments, make sure everyone is on the same system- makes collaboration easier


## What makes a good dev environment?
Below are some considerations when making a Dev environment, the highlighted points are the most important to implement:
* Devs may need to use licenced software - DevOps engineer would have to evaluate most cost effective licence in relation to task requirements. 
* Dev environments may be monoliths due to ease of use which this provides. Further from production, the more user friendliness is important.
* Dev environments tend to be local, adding to security
* Virtualisation - use OS of one machine to create another OS within the machine and use it while having access to original OS
* Virtualisation allows us to set up the same dev environemtn for everyone, even if they are using different operating systems with their base machines
* **User friendly, fast and robust** - If the environment is hard to use or buggy, devs will use their own which cna lead to integration issues later on
* **Ease to update and change for DevOps engineer** - If the devs need something, should be easy for us to add, should always be green lit by DevOps engineer
* **Should match production environment as closely as possible**- Reduces the chance of having integration issues, dont want a dev environment that works differently to production environment
* **It should be the same for everyone everywhere** - Solve the issue of features working on some machines and not working on others- devs dont need to individually configure their machines, and it can be hard to find the one thing thats crashing your program
* **It should only support one application** - Can be tempting to make dev environment with the purpose of making several different applications, this has potential problems
1) Issue occurs if different applications require different versions of the language being used 
2) App 1 needs a program that conflicts with a program needed for app 2

## Set up  dev environment - software
Setting up a development environment will require the following software and features:
1) Vagrant - https://developer.hashicorp.com/vagrant/downloads
2) Virtual box - https://www.virtualbox.org/wiki/Download_Old_Builds_6_1 ( click the windows hosts option to start download) (virtual box shows us the state of our virtual machine)
3) Ruby - https://rubyinstaller.org/downloads/
4) Bash
5) Git
6) SSH
7) An IDE is helpful, we will be usign Vscode - https://code.visualstudio.com/download

## Set up dev environment -settings -Windows features
* Type windows features into your search bar and click on the application with that name
* If `Hyper V` is avalable, `disable` it
* `Enable ` `Virtual Machine Platform` and `Windows Hypervisor Platform`
* `Restart` your machine

## Set up dev environment - settings -Enabling virtualisation through BIOS
* When starting your machine, rapidly press the `BIOS key` - this varies between users and should be briefly displayed when starting, if it is not try `f10`.
* Once in the `BIOS` screen, navigate to `CPU configuration`
* Look at the list of options and find the option which mentions `virtualisation` and `enable` it
* `Exit` an `save` your changes
## Making the virtual environment
**Note- when using Git Bash, make sure to run it as administrator**
1) Open up `git bash` and navigate to the directory being tracked by `github` using `cd`
2) Within the directory you wish to use, run - `vagrant init ubuntu/xenial64`. 
3) In the file are the instructions vagrant gives to virtual box- allows us to standerdise the dev environment, just need to give the instructions (language is ruby)
4) To send vagrant file to virtual box - `vagrant up`
5) Should now be able to visualise the virtual environment in virtual box
6) Connect to virtual machine : `vagrant ssh`
7) Want to use a web server- either apache or nginx
8) Run `sudo apt-get update` 
9) Run `sudo apt-get install nginx -y` to install `nginx` web server
10) Have to start the system after downloading it -> `sudo systemctl start nginx` (name of the program at the end)
11) Can check if it worked by doing -> `sudo systemctl status nginx`
12) Machine has an IP but we dont know it, and vagrant changes the IP every time it gets span up
13) To give out vitual machine an IP :In the vagrant file in your `IDE` add the following box command -> `config.vm.network "private_network", ip: "192.168.10.100"`
14) To exit the virtual machine type `exit` in `git bash`
15) In `git bash`, do `vagrant reload` (checks for updates in configuration file without spinning up the machine completely)
16) You can now type the IP into the internet and get the welcome page for the webserver
* Can add to vagrant file to add more virtual machine, get more features, allow them to communciate between each other easily

## Sidenotes/further context about making a development environment through vagrant
* `init` initialises the vagrant folder. The `ubuntu` specifies the version of linux and xenial64 the distribution of linux. Running this command makes a configuration file in the target directory
* The ruby code tells vagrant what box to use ( box means operating system)
* Dev environemnt should now be visible in virtual machine
* Running `ls -a`  shows hidden files and folders
* sudo (super user) apt-get (used to get something form the internet) update(updates the machine) -y(used to automate questions) - sudo apt-get update -y . Doing this also confirms the machine has access to the internet
* Can specify any IP you want, just has to be the correct format
* Can add more parameters to the vagrant file to add more virtual machines, get more features, allow them to communciate between each other easily
* Can delete the virtual environment with `vagrant destroy`



* /32 = ip address
* any other number means a range of ip addresses
* In binary an ipv4 address is a 32 binary
* Changing permissions on file -> could be useful
