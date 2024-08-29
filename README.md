The project is a simple web application  built with the flask framework and running postgresql in the backend. The application includes functionality for the following: 

- User login and user profiles 
- Logged in user can make a post to postfeed and messageboard. 
- Logged in user can delete their own post or message. 
- Logged in user can comment on posts and messages. 
- User can search for posts. 
- The website has a feed showing all posts and a messageboard showing all topics. 

# How to use
After cloning the repo, follow these steps. \
Make sure you have Postgresql downloaded.

1. Set up virtual environment

`python3 -m venv venv` \
`source venv/bin/activate`

2. Install dependencies

`pip install -r requirements.txt`

3. Set up database \
`createdb user` \
`psql -U {your system username} -d user -f schema.sql` 

4. Start up application \
`flask run`

Now the web application should be running at http://127.0.0.1:5000/