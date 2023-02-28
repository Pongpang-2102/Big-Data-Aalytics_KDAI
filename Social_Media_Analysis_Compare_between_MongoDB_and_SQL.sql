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

-- 1.2 and then , we must to try to show table POST that we've just created , --
select * from POST ;

-- 1.3 create & insert table TAG

CREATE TABLE TAG_LIST(
       _id text not null UNIQUE PRimary KEY,
       post_id text not null ,
       tag text
                 );
                 
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
    
-- 1.4 and then , we must to try to show all parts of table TAG_LIST that we've just created , --
select * from TAG_LIST;

-- 1.5 create & insert table COMMENT --
CREATE TABLE COMMENT(
       comment_id text not null UNIQUE PRimary KEY,
       post_id text ,
       by_user text,
       message text ,
       date_time text ,
       likes_number int
                 );

insert into COMMENT VALUES
   ( "CMT001_th" ,  "P001_th"    ,
                   "Patioib Noonark" , 
                   "น่าจะจัด Peta mode ไปอารมเหมือน Hard core Mode 1.ห้ามขี่สัตว์ 2.ห้ามใช้ยาจากสัตว์ 3.ห้ามใช้อุปกรณ์จากสัตว์ บันเทิง 5555555 ",
                   "2022-02-27 22:15:00.000" ,
                   40   ) ,
   ( "CMT002_th" ,  "P001_th"    ,
                   "Throne West" , 
                   "ดูทรงแล้วน่าจะอยากได้พื้นที่สื่อมากกว่า ก็นะมันก็คงรู้แหละว่าทำงี้แล้วสื่อให้แสงให้พื้นที่มัน เดี๋ยวเกมหน้าที่มีสัตว์ก็คงโผล่มาอีก",
                   "2022-02-27 22:07:00.000" ,
                    45   ) ,
   ( "CMT003_th" ,  "P001_th"    ,
                   "Nattanun Kaewplengsrisakul" , 
                   "มันฆ่าไม่ได้ แต่เราสามารถใช้คาถาDescendoให้ล้มลงได้โคตรรุนแรง5555",
                   "2022-02-27 23:03:00.000" ,
                    5   ) ,
   ( "CMT004_th" ,  "P001_th"    ,
                   "Rapinr Wattana" , 
                   "PETA เห็นคลิปกะหล่ำกัดแมงมุมยัง? 555",
                   "2022-02-27 22:40:00.000" ,
                    13   ) ,
    ( "CMT005_th" ,  "P001_th"    ,
                   "Kittipong Pornlert" , 
                   "เขาลืมไปใช่ไหมว่าแกนกลางไม้กายสิทธิ์ทำจากอะไรบ้าง...ดีไม่บอกว่าขอให้ทุกคนที่เล่นเกมนี้หลีกเลี่ยงการใช้ไม้กายสิทธิ์ด้วย",
                   "2022-02-27 22:38:00.000" ,
                   27   ) ,
    ( "CMT006_th" ,  "P001_th"    ,
                   "Ai Oat" , 
                   "เจอมอนฮัน อกมีงไม่แตกตายเลยหรอ",
                   "2022-02-28 13:33:00.000" ,
                   4   ) ,
    ( "CMT007_th" , "P002_th"    ,
                   "Phicha Yk" , 
                   "Ja Thidarat Jaea Tipagorn Papatson Yok Looknam Temrat Yokk ApinYa",
                   "2022-02-28 05:32:00.000" ,
                   1   ) ,
    ( "CMT008_th" , "P002_th"    ,
                   "Tiwgnoran Top" , 
                   "เงื่อนไขนี่เข้าอันใดอันนึงก็ได้ใช่ไหมครับ",
                   "2022-02-28 07:45:00.000" ,
                   0   ) 
                   
   -- 1.6  use Full join to combine all table together
   
select 
   P._id , P.title ,P.desciption ,P.url , P.likes , P.post_by,
   C.by_user,C.message,C.date_time , C.likes_number,
   T.tag
   
FROM POST  P
full join COMMENT C on C.comment_id = P._id
Full join TAG_LIST T on T.post_id = P._id
order by P.likes DESC;

-- after that , go to observe at MongoDB to compare with SQL result

   






                       
