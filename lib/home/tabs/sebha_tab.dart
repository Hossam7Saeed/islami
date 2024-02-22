import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({Key? key}) : super(key: key);

  @override
  _SebhaTabState createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  List<String> texts = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
    "لا اله الا الله"
  ];

  @override
  Widget build(BuildContext context) {
    int index = (counter ~/ 33) % texts.length;
    String currentText = texts[index];

    return Center(
      child: Column(
        children: [
          Image.asset(
            "assets/images/head_sebha_logo.png",
            alignment: Alignment.topCenter,
            width: 73,
            height: 105,
          ),
          SizedBox(height: 0),
          InkWell(
            onTap: () {
              setState(() {
                counter++;
                if (index == texts.length - 1 && counter % 33 == 0) {
                  counter = 0;
                }

              });
            },
            child: Image.asset(
              "assets/images/body_sebha_logo.png",
              alignment: Alignment.topCenter,
              width: 232.0,
              height: 234.0,
            ),
          ),
          SizedBox(height: 50),
          Text(
            "عدد التسبيحات",
            style: GoogleFonts.elMessiri(
                fontSize: 25, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: Color(0XFFB7935F),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(10.0),
            child: Text(
              "$counter",
              style: TextStyle(fontSize: 20,color: Colors.white),
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
                color: Color(0XFFB7935F),
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              currentText,
              style: GoogleFonts.elMessiri(
                  fontSize: 25, fontWeight: FontWeight.w600,color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
