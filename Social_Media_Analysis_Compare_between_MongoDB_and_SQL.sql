-- this is a file which I need to show comparison between using SQL and MongoDB for Creating database for analyzing Facebook social Media Post --

/** Part 1 : create those 3 table using SQL (via SQLite online) :
    Table_requried : POST , TAG , COMMENT as show below *//
    
-- 1.1 create & insert table TAG


CREATE TABLE POST(
       _id text not null UNIQUE Primary KEY,
       title text ,
       desciption text,
       url text ,
       likes int ,
       post_by text
                 );
                 
-- 1.2 insert relavant post information to table post --
                 
insert into POST VALUES
    ("P001_th"    ,"[News] PETA วอนขอให้เหล่าชาวเกมที่เล่น Hogwarts Legacy ปฏิบัติกับสัตว์มหัศจรรย์ด้วยความเห็นอกเห็นใจ " , 
                   "ทาง PETA หรือ People for the Ethical Treatment of Animalsองค์กรพิทักษ์สิทธิของเหล่าสัตว์ ซึ่งเป็นไม้เบื่อไม้เมากับวงการเกมมาโดยตลอดได้ออกบทความเคล็ดลับ 3 ข้อ สำหรับการเล่น Hogwarts Legacy ที่เป็นมิตรกับเหล่าสัตว์มหัศจรรย์ ด้วยเหตุผลที่ว่า แม้จะเป็นสัตว์มหัศจรรย์ที่สร้างขึ้นด้วยโพลีกอน ก็ควรได้รับความเห็นอกเห็นใจ",
                   "https://web.facebook.com/sheapgamer/photos/a.194547844659883/1360758658038790/" ,
                   4520,
                   "เกมถูกบอกด้วย v.2"  
    ),
    ("P002_th"   , "ทุนเยอรมันจัดหนัก จัดเต็มอย่าง DAAD ประจำปี 2024/2025 มาแล้ว!!" ,
                   "*ทุนนี้ครอบคลุมแทบทุกอย่างและไม่มีข้อผูกมัด*ซึ่งคุณสามารถสมัครได้เพียงถ้าคุณเข้าเงื่อนไขในการสมัครดังนี้ 👇 - จบปริญญาตรีมาแล้วไม่เกิน 6 ปี (ทุน ป.โท) - จบปริญญาโทมาแล้วไม่เกิน 6 ปี (ทุน ป.เอก) - มีประสบการณ์ทำงานอย่างน้อย 2 ปี โดยจะเป็นการสนับสนุนค่าใช้จ่ายให้ระหว่าง 12-42 เดือน ขึ้นอยู่กับระดับที่เราต้องการศึกษาต่อ",
                   "https://web.facebook.com/photo/?fbid=766813018344390&set=a.194323665593331",
                  570 ,
                  "พ่อบ้านเยอรมัน"
    ),
    ("P003_th"   , "คุณจะพิสูจน์ธุรกิจของคุณในอนาคตและทำสิ่งต่างๆมากขึ้นโดยใช้เวลาน้อยลงได้อย่างไร",
                   "เข้าร่วม Azure Virtual Summit ของเราในวันที่ 1-2 มีนาคม เพื่อเรียนรู้จากผู้เชี่ยวชาญในอุตสาหกรรมและเพื่อนร่วมงานของคุณเกี่ยวกับวิธีเพิ่ม #cloud ROI ผ่าน #agility, efficiency, #innovation, #security รวมถึงการประหยัดต้นทุนที่เพิ่มขึ้น",
                   "https://web.facebook.com/MSFTTH/photos/a.505942826437061/1915635712134425/",
                   4,
                   "Microsoft Thailand"
     );

-- 1.3 and then , we must to try to show table POST that we've just created , --
select * from POST ;

-- 1.4 create & insert table TAG

CREATE TABLE TAG_LIST(
       _id text not null UNIQUE PRimary KEY,
       post_id text not null ,
       tag text
                 );
                 
-- 1.5  insert relavant post information to table TAG_LIST --
insert into TAG_LIST VALUES 
    ( "th_tag001" , "P003_th" , "Technology") ,
    ( "th_tag002" , "P003_th" , "DMWL") ,
    ( "th_tag003" , "P003_th" , "innovation") ,
    ( "th_tag004" , "P002_th" , "พ่อบ้านเยอรมัน") ,
    ( "th_tag005" , "P002_th" , "เยอรมัน") ,
    ( "th_tag006" , "P002_th" , "เยอรมนี") ,
    ( "th_tag007" , "P002_th" , "germany") ,
    ( "th_tag008" , "P002_th" , "German") ,
    ( "th_tag009" , "P002_th" , "DAAD") ;
    
-- 1.6 and then , we must to try to show all parts of table TAG_LIST that we've just created , --
select * from TAG_LIST;

-- 1.7  insert relavant post information to table COMMENT --
CREATE TABLE COMMENT(
       comment_id text not null UNIQUE PRimary KEY,
       post_id text ,
       by_user text,
       message text ,
       date_time text ,
       likes_number int
                 );
                 






                       
