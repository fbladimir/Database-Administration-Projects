#!/bin/bash 

db_name = "testDB"
table_name = "testTable" 


#create database and create table 

function setup_database() { 
    echo "...setting up database..." 
    mysql 

    CREATE DATABASE $db_name;
    echo "using database now.."  
    USE $db_name; 

    echo "creating table..." 
    CREATE TABLE $table_name (username varchar(255), first varchar(255));

    MYSQL
}

###################
##    MAIN      ###
###################
setup_database

#END