create table HUMANS
(
    ID            serial primary key,
    HUMAN_NAME    varchar not null,
    HUMAN_GENDER  varchar not null,
    HUMAN_FEELING varchar not null
);

create table MONSTERS
(
    ID           serial primary key,
    MONSTER_NAME varchar not null
);

create table HUMANS_MONSTERS_ACTIONS
(
    ID          serial primary key,
    ID_MONSTER  INTEGER REFERENCES MONSTERS,
    ID_HUMAN    INTEGER REFERENCES HUMANS,
    ACTION_NAME varchar not null
);

create table ITEMS
(
    ID         serial primary key,
    ITEM_NAME  VARCHAR NOT NULL,
    STATE_NAME varchar not null
);

create table PLACES
(
    ID         serial primary key,
    PLACE_NAME VARCHAR NOT NULL
);

create table ACTIONS
(
    ID          serial primary key,
    NAME_ACTION varchar not null unique,
    HUMAN_ID    INTEGER REFERENCES HUMANS,
    ITEM_ID     INTEGER REFERENCES ITEMS,
    PLACE_ID    INTEGER REFERENCES PLACES
);
