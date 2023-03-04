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

INSERT INTO humans (human_name, human_gender, human_feeling)
VALUES ('Тим', 'мальчик', 'uuu'),
       ('Лекси', 'двеочка', 'uuu');

INSERT INTO monsters (monster_name)
VALUES ('Раптор 1'),
       ('Раптор 2');

INSERT INTO items (item_name, state_name)
VALUES ('дверь', 'открыта'),
       ('дверь с надписью "токсичные вещества"', 'открыта'),
       ('сигнализация', 'воет'),
       ('сигнальные лампочки', 'мигают');

INSERT INTO places (place_name)
VALUES ('лаборатория'),
       ('коридор лаборатории'),
       ('комната лаборатории');
      
INSERT INTO actions (name_action, human_id, item_id, place_id)
VALUES ('бежал', 1, null, 1),
       ('добежал', 1, null, 1),
       ('вскочил', 1, 1, 1),
       ('мчался', 1, null, 2),
       ('скулила и стонала', 2, null, 1),
       ('увидел', 1, 2, 2),
       ('рванул', 1, 2, 2),
       ('влетел', 1, 2, 3),
       ('завизжала', 2, null, 1);
