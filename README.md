# Deploy Streamlit app in Heroku

This project can be used as a base for developing web app using streamlit api and deploying in Heroku . Clone the project and add code as per your requirement.

### Structure
Application has the following folders and files
1. <b>AppStreamlit.py</b> - This is the main file where application UI code is written using streamlit.
2. <b>Procfile</b> - This file is <b>mandatory</b> for Heroku deployment, which specifies the commands that are executed by the app(at heroku) on startup .Here , we mentioned - "web: sh setup.sh && streamlit run AppStreamlit.py". 
Commands to setup server is available in the setup.sh . Command to run streamlit app is "streamlit run app.py"
3. <b>setup.sh</b> - This file contains some server code to set up streamlit app on the Heroku side. This file is <b>mandatory</b>
4. <b>requirements.txt</b> - This file contains the streamlit library required to deploy app on heroku. 

### Steps to deploy app in Heroku
1. git clone https://github.com/savitha91/Streamlit_HerokuDeploy.git
2. cd Streamlit_HerokuDeploy
3. heroku login
4. heroku create
5. git push heroku master
6. Navigate to app url shown in the cli 

### Common error and solutions:
1. "No web processes running" heroku error

> Run the command "heroku ps:scale web=1" . If this gives - "Couldn't find that process type (web)" , which means you are not running any web dynos. This may be due to Procfile naming. The Procfile should always be named "Procfile" without a file extension. Procfile Format <process type>: <command> 
Also, the spacing inside the Procfile should be correct eg: add space after web: 

2. Permission denied (publickey).fatal: Could not read from remote repository.

> Try to login again in Heroku and test 

3. App name created will be different from the deployed application link

> Remove the apps from Heroku(heroku apps:destroy appname) . Create new app and deploy


