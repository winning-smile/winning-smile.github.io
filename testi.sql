create table users(
     id integer primary key not null,
     email text(255) not null,
     password text(255) not null,
     create_time default current_timestamp
 );

create table project(
    id integer primary key not null ,
    name text(255) not null,
    user_id integer,
    FOREIGN KEY(user_id) REFERENCES users(id)
);

create table suite(
    id integer primary key not null ,
    name text(255) not null,
    project_id integer,
    FOREIGN KEY(project_id) REFERENCES project(id)
);

create table caseq(
    id integer primary key not null,
    name text(255) not null,
    text text,
    suite_id integer,
    FOREIGN KEY(suite_id) REFERENCES suite(id)
);
