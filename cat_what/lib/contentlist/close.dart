import 'package:flutter/material.dart';

class closeCat extends StatelessWidget {
  const closeCat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        title: Text("ทำไมเราถึงควรเลี้ยงน้องแมวแบบระบบปิด"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/cat1.jpeg'),
              Text(
                'ทำไมเราถึงควรเลี้ยงน้องแมวแบบระบบปิด\n',
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.left,
              ),
              Text(
                '   ยุคสมัยที่เปลี่ยนไป ทำให้วิธีการเลี้ยงแมวในปัจจุบัน ก็ปรับเปลี่ยนไปตามยุคสมัยเช่นกันจากเดิมที่มีการเลี้ยง\nให้แมวได้เที่ยวเล่นทั่วไปแบบมีอิสระ ไปไหนก็ได้แบบที่ต้องการ หรือที่เรียกกันว่าเลี้ยงแบบปล่อย \n   ในยุคนี้เจ้าของแมวหลาย ๆ คน เลือกที่จะเลี้ยงแมวด้วยระบบปิด และความนิยมในการเลี้ยงแมวระบบปิดนี้ก็มีแนวโน้มเพิ่มขึ้นเรื่อย ๆ\n   แล้วการเลี้ยงแมวระบบปิดที่กำลังพูดถึงคืออะไร ต่างจากการเลี้ยงแมวแบบปล่อย หรือมีข้อดีข้อเสียกับการเลี้ยงแมวแบบปล่อยหรือไม่เจ้าของแมวอย่างเราควรจะ\nเลือกแบบไหนดี\n',
                style: TextStyle(fontSize: 15),
              ),
              Image.asset('assets/images/cat4.jpeg'),
              Text(
                'เลี้ยงแมวระบบปิดคืออะไร\n',
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.left,
              ),
              Text(
                '   การเลี้ยงแมวระบบปิด หรือที่เรียกให้เข้าใจง่าย ๆ ก็คือ การเลี้ยงแมวในบ้าน โดยไม่ได้ปล่อยแมวให้ออกไปเที่ยวเล่นข้างนอกบ้านนั่นเอง \n   ซึ่งองค์กรทางสัตวแพทย์ The American Veterinary Medical Association (AVMA) ก็มีคำแนะนำให้เลี้ยงแมวระบบปิด เพราะจะช่วยลดอันตรายจากนอกบ้าน เพราะการอยู่ในบ้านย่อมมีโอกาสที่จะได้รับบาดเจ็บ หรือได้รับอันตรายน้อยกว่าที่อยู่นอกบ้าน\nนอกจากนี้การใช้ชีวิตของเจ้าของแมวในปัจจุบันก็เปลี่ยนไปเช่นกัน จากที่เคยอยู่บ้านก็มาอยู่คอนโดมิเนียมกันมากขึ้น และคอนโดมิเนียมหลายแห่งในปัจจุบัน ก็อนุญาตให้เลี้ยงสัตว์เลี้ยงได้ด้วย \n    แบบนี้ก็เข้าทางคนรักแมว การเลี้ยงแมวในคอนโด จึงกลายเป็นเรื่องที่เห็นกันได้เป็นปกติไปแล้ว และหากใครคิดว่าการเลี้ยงแมวในระบบปิดนั้นเป็นการทารุณกรรมสัตว์ อาจจะต้องคิดใหม่ เพราะด้วยนิสัยของแมวนั้นจะชอบอยู่ในพื้นที่ที่เป็นส่วนตัวของตัวเอง และชอบปกป้องอาณาเขต แมวที่เชื่องแล้วจึงมักมีความสุข และรู้สึกปลอดภัยกับการถูกเลี้ยงอยู่ในบ้าน ในที่ที่มีทุกอย่างที่ตัวแมวเองต้องการ\n',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                'ข้อดี\n',
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.left,
              ),
              Text(
                '• ลดโอกาสเกิดอันตรายจากการบาดเจ็บ\n• ลดโอกาสสูญหาย\n• ลดโอกาสติดโรคติดต่อร้ายแรงในแมว\n• ลดโอกาสติดปรสิตชนิดต่าง ๆ\n• มีอายุยืนยาว\n',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                'ข้อเสีย\n',
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.left,
              ),
              Text(
                '• อาจเกิดโรคอ้วนหรือภาวะน้ำหนักเกิน\n• โรคอื่น ๆ : เช่น โรคเบาหวาน ซึ่งสาเหตุที่โน้มนำให้เกิดปัญหาโรคเบาหวานนี้ก็มาจากการเกิดโรคอ้วนนี่เอง\n• อุบัติเหตุจากการตกจากที่สูง\n',
                style: TextStyle(fontSize: 15),
              ),
              Image.asset('assets/images/cat5.webp'),
            ],
          ),
        ),
      ),
    );
  }
}
