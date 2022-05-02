import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFfef9eb),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(18, 50, 18, 25),
              margin: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 76,
                        width: 80,
                        margin: const EdgeInsets.only(left: 26, right: 26),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/images/1.jpg"),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Column(
                          children: const [
                            Text(
                              "Sherzod Ermonov",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff0d253e)),
                            ),
                            Text(
                              "App Developer",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Color(0xfff7be7c),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                  child: Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                  right: 18,
                ),
                child: Column(
                  children: [
                    Center(
                      child:  Text(
                        "Ma'lumotlar:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ),
                    Text(
                        "Ushbu  dastur  Toshkent  viloyati  Bekobod  shahar  ' Shaxona  Jo'jalar '  kafesi  uchun  yaratildi. \nMurojat uchun: Tel:  +998 99 336 45 88    \nMualliflar: Toshkent viloyati Bekobod shahar 2-IDUM Informatika fani o'qtuvchilari Sh.I.Ermonov hamda K.A.Temirboyevalar tomonidan yaratildi. "),
                    SizedBox(height: 24,),
                    Text("Murojat uchun:", style: TextStyle(fontWeight: FontWeight.w800),),
                    SizedBox(height: 24,),
                    Row(
                      children: [
                        Image.asset("assets/icons/tel.png"),
                        SizedBox(width: 24,),
                        Text("+998 90 400 03 16")
                      ],
                    ),
                    SizedBox(height: 18,),
                    Row(
                      children: [
                        Image.asset("assets/icons/telegram.png", height: 24,),
                        SizedBox(width: 24,),
                        Text("@Lion4991")
                      ],
                    ),
                    SizedBox(height: 18,),
                    Row(
                      children: [
                        Image.asset("assets/icons/facebook.png", ),
                        SizedBox(width: 24,),
                        Text("Sherzod Ermonov")
                      ],
                    ),
                    SizedBox(height: 18,),
                    Row(
                      children: [
                        Image.asset("assets/icons/instagram.png", ),
                        SizedBox(width: 24,),
                        Text("sherzod.ermonov.7")
                      ],
                    ),
                    SizedBox(height: 18,),
                    Row(
                      children: [
                        Image.asset("assets/icons/github.png", ),
                        SizedBox(width: 24,),
                        Text("Sherzod94")
                      ],
                    ),
                    SizedBox(height: 18,),
                    Row(
                      children: [
                        Image.asset("assets/icons/linkedin.png", ),
                        SizedBox(width: 24,),
                        Text("https://www.linkedin.com/in/\nsherzod-ermonov-8b88a8231")
                      ],
                    ),
                  ],
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
