ตัวอย่างการเรียกใช้ Command สำหรับการ Run script 

***โดยจำเป็นที่เครื่องต้องมีการติดตั้ง Robot framework เอาไว้ก่อน ***  

หากต้องการ Run file ใช้คำสั่ง pybot ตามด้วยชื่อ File ดังตัวอย่างด้านล่าง  

pybot debit.robot

โดยสามารถแก้ไขตัวแปรที่จำเป็น โดยอ้าอิงตัวแปร

robot -v (ชื่อตัวแปร):(ค่าที่ต้องการเปลี่ยน)<วรรค>(ชื่อ File)   

ดังตัวอย่างด้านล่าง  
robot -v URL:http://139.59.106.112 love_test.robot  
