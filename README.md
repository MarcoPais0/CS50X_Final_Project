# MovieMe
## Video Demo:  <URL HERE>
## Description:
Hi!
I'm a student from Coimbra, Portugal and I developed this project for the CS50x online course.
In this project I developed a **WebApp** using **Flask** that allows users to **search movies and actors** by name using **IMDB's API**.
They can also see the trending movies of the moment and **add or remove** movies from their **favorites list**.

## Files:
#### helpers.py, app.py:
In **helpers.py** I only have the **login_required** function that I reused from CS50X **finance** problem from week 9.
  
In **app.py** is my main app. There I create a connection to IMDB's API and initialize the **sqlite** database by reading **squema.sql** and executing it's content, therefore creating the necessary tables.
  
I also create and configure the **flask** app.
  
Then I created the functions that handle all the routes.
  
For **/login**, **/logout** and **/register** the app either creates and stores a **session id** or clears it.
  
**/** shows the index page.
  
**/trending**, **/favorites**, **/smovie** and **/sactor** all show a table with the results or a text box.
  
All the functions have verifications preventing wrong or repeated inputs.
#### schema.sql, requirements.txt, movieme.db:
The **requirements.txt** file contains all the python libraries needed for the WebApp. They can be installed with the **pip install -r requirements.txt** command.
  
The **schema.sql** has all the SQL commands needed to initialize the sqlite database.
  
The **movieme.db** is the sqlite database.
#### static:
In the **static** folder is the background of the site (**cyberpunk.jpg**) and the CSS file (**styles.css**) with all the WebApp's styes.
#### templates:
The **templates** folder has all the HTML files.
  
All the other HTML files complete the **layout.html** file.
  
**login.html** and **register.html** present text boxes for the user's inputs.
  
**favorites.html** shows a table with all the user's favorites and a button in each row to remove it.
  
**index.html** shows four big buttons that represent all the functionalities of the WebApp. When clicked the user is redirected to the correspondent link.
  
**s.html** presents a text box for the user input (actor or movie name).
  
**sactor.html** and **smovie.html** both show a table and an input text box with one difference, in the **sactor.html** page there is an option in every row to add the movie to the favorites.
  
**trending.html** shows the top 20 movies of the moment with te option to add them to the favorites.
