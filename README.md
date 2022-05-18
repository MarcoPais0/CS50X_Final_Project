# MovieMe
## Video Demo:  https://www.youtube.com/watch?v=UIxUTdkFwSY
## Description:
Hi!

I'm a student from Coimbra, Portugal and I developed this project for the CS50x online course.

In this project I developed a **WebApp** using **Flask** that allows users to **search movies and actors** by name using **IMDB's API**.

They can also see the trending movies of the moment and **add or remove** movies from their **favorites list**.

## Files:

### helpers.py, app.py:

In __helpers.py__ I only have the **login_required** function that I reused from CS50X **finance** problem from week 9.

In **app.py** is my main app. There I create a connection to IMDB's API and initialize the **sqlite** database by reading **squema.sql** and executing its content, therefore creating the necessary tables. I also create and configure the **flask** app.

Then I created the functions that handle all the routes.
  - **/login** checks if all the inputs were given and then queries the database to see if the user exists, if not there is a flash alert and the page is reloaded.
  - **/logout** clears the session id logging out the user.
  - **/register** checks if all the inputs were given, checks if the passwords match and then gives the user a session id and stores the username, encrypted password and user id in the database.
  - **/** shows the index page with the four options the WebApp offers and the logout button.
  - **/trending** shows a table with the top 20 movies currently and a button in each column to add the respective movie to the favorites. If the movie was already added it shows a flash alert.
  - **/favorites** shows a tbale of all the favorite movies of the user along with the option to remove any movie from the list. After a movie is removed the page is reloaded with the new list of favorite movies. This is the slowest feature of the WebApp. I believe it is because the fuctions used to search movies by id must be slower than the others, where it searches by name.
  - **/smovie** initialy loads the html with only the input text box. After a valid name is given it shows the input text box and a table with the list of the movies resulting from the search. In the table there are also buttons with every movie to add them to the user's favorites.
  - **/sactor** initialy loads the html with only the input text box. After a valid name is given it shows the input text box and a table with the list of the actors resulting from the search. In this table there is no option to add the actors because the favorites list only works for movies and shows.

All the functions have verifications preventing wrong or repeated inputs.

### schema.sql, requirements.txt, movieme.db:

- The **requirements.txt** file contains all the python libraries needed for the WebApp. They can be installed with the **pip install -r requirements.txt** command.

- The **schema.sql** has all the SQL commands needed to initialize the sqlite database.

- The **movieme.db** is the sqlite database.
- 
### static:
In the **static** folder is the background of the site (**cyberpunk.jpg**) and the CSS file (**styles.css**) with all the WebApp's styes.
In **styles.css** I create the styles for all the elements in my WebApp.
For the tables I made them slightly transparent to be able to slightly see the background image and made a blue line at the end of each row for aesthetics.
For the cyberpunk buttons I inspired myself in a post online (link in the code) where I used the clip atribute to create the appearence of those cyberpunk buttons.
The text boxes are pretty much default because I didn't think it would be better to change them.
### templates:

The **templates** folder has all the HTML files.

All the other HTML files complete the **layout.html** file.

- **login.html** and **register.html** present text boxes for the user's inputs.
- **favorites.html** shows a table with all the user's favorites and a button in each row to remove it.
- **index.html** shows four big buttons that represent all the functionalities of the WebApp. When clicked the user is redirected to the correspondent link.
- **s.html** presents a text box for the user input (actor or movie name).
- **sactor.html** and **smovie.html** both show a table and an input text box with one difference, in the **sactor.html** page there is an option in every row to add the movie to the favorites.
- **trending.html** shows the top 20 movies of the moment with te option to add them to the favorites.
