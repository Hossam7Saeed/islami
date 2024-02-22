import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset(
            "assets/images/radio_image.png",
            height: 400,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 50,
                  child: Text(
                    "اذاعه القرآن الكريم",
                    style: GoogleFonts.elMessiri(
                        fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                height: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.skip_previous, size: 36),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.play_arrow, size: 36),
                      // Custom play icon
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.skip_next, size: 36),
                      // Custom forward icon
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
