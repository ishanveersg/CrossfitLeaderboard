# Projet Leaderboard

## Installation (Windows)

Steps:

1. Download the lastest version of XAMPP from https://www.apachefriends.org/index.html. 

2. Open the php.ini file located in C:\xampp\php

3. Uncomment the following lines in php.ini:
   
   ```
   extension=pgsql
   extension=pdo_pgsql
   ```

4. git clone this git repo into the `C:\xampp\htdocs` directory.

5. Open the XAMPP control panel and start the apache server.

6. Go to `localhost/projet_leaderboard/` on your web browser.
