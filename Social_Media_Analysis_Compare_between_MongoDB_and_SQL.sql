
CREATE TABLE POST(
       _id text not null UNIQUE Primary KEY,
       title text ,
       desciption text,
       url text ,
       likes int ,
       post_by text
                 );
