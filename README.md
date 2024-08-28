# Tietokantasovellus
Kyseessä on eläinbongailussa hyödynnettävä sovellus. 
- Käyttäjä voi kirjautua sisään ja postata sivustolle päivityksen, josta ilmenee havaitut lajit, havaintoaika, sijainti ja haluttaessa kuva ja muuta tietoa. 
- Muut käyttäjät voivat kommentoida postausta tai tykätä siitä. 
- Käyttäjä voi hakea sivustolta postauksia lajin, kaupungin, ajankohdan tai käyttäjän perusteella. 
- Yksittäisen käyttäjän sivulla näkyy käyttäjän tekemät postaukset.

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
`psql -U {your system username} -d user -f schema.sql` \

Now the web application should be running at http://127.0.0.1:5000/