# ohai-userdata-attribute
###### A plugin to get automatic attributes declared in EC2 Userdata
###### Disclaimer : I am just new to Chef, Ohai and Ruby so this is just my experiment. 

***

#### Add the lines below to your EC2 Userdata. You can add as many variables as you want as long as you follow the format. The custom plugin checks for the word "ohai" and strips the information after it.

`ohai|PROJ_ENV=ENVIRONMENT|project=PROJECT_NAME`

