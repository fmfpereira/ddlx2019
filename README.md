# README

Drupal Day Lisbon 2019 Session - Modernize your hooks repository

## Structure

### Drupal releases

You can find working drupal releases from v1 to v3.

Each release contains a docker-compose file ready to run the project.

There are also included 2 database files compatible with mysql 5 for each release.

* database-mysql-5.sql is the default database to be imported to start from scratch.
* fmfpereira-mysql-5.sql is a database with demo content.
    * The default user name and password are the following:
        * fmfpereira:12345

### Examples

#### Concept

You can find 2 examples of the hooks concept:

* basic_hook.php 
    * shows a simple example of [variable functions](https://www.php.net/manual/en/functions.variable-functions.php).
* advanced_hooks.php
    * shows the concept of the drupal v1 hook implementation in a more clear way.
    
#### modernize_hook

The drupal 8 module with the code examples presented on the session.

# Support

Please open an issue.
 