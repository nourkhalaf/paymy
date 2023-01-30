import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ErrorOccured extends StatelessWidget {
  String appBarTitle = '!حصل خطأ ما';
  String image = 'lib/images/error.svg';
  String text1 = 'عذراً ! لا يمكن الوصول للحساب';
  String text2 =
      'عذراً ! لا يمكن الوصول للحساب حاليا يمكنك التواصل مع الدعم الفني لحل المشكلة';
  String btnText = 'الدعم الفني';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          appBarTitle,
          style: GoogleFonts.tajawal(
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700)),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Home(
        image,
        text1,
        text2,
        btnText,
      ),
    );
  }

  Home(String image, String text1, String text2, String btnText) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(image),
          const SizedBox(height: 28),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 86),
            child: Text(
              text1,
              style: GoogleFonts.tajawal(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700)),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 75),
            child: Text(
              text2,
              style: GoogleFonts.tajawal(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500)),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              )),
              elevation: MaterialStateProperty.all(0),
              backgroundColor:
                  MaterialStateProperty.all(const Color(0xFF18BB32)),
            ),
            child: Container(
              width: 270,
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    btnText,
                    style: GoogleFonts.tajawal(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(width: 10),
                  SvgPicture.asset('lib/images/call.svg'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
