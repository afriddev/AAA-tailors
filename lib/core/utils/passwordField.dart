import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class passwordField extends StatefulWidget {
  passwordField(
      {Key? key,
      required this.hintText,
      required this.eye,
      required this.controller})
      : super(key: key);
  dynamic hintText;
  dynamic eye;
  dynamic controller;
  @override
  State<passwordField> createState() => _passwordFieldState();
}

class _passwordFieldState extends State<passwordField> {
  @override
  Widget build(BuildContext context) {
    var _deviceWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(),
      child: Container(
        width: _deviceWidth * 0.9,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  blurRadius: 30, offset: Offset(-5, -5), color: Colors.white),
              BoxShadow(
                  blurRadius: 30,
                  offset: Offset(5, 5),
                  color: Colors.grey.shade300),
            ]),
        child: Row(
          children: [
            Padding(
                padding: EdgeInsets.only(),
                child: Container(
                  width: 50,
                  height: 50,
                  child: Icon(
                    Icons.lock,
                    color: Colors.black,
                    size: 26,
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(),
                child: Container(
                  width: _deviceWidth * 0.6,
                  height: 50,
                  child: TextField(
                    controller: widget.controller,
                    textInputAction: TextInputAction.next,
                    obscureText: obsec,
                    style: GoogleFonts.rajdhani(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )),
                    decoration: InputDecoration(
                        hintText: widget.hintText,
                        hintStyle: GoogleFonts.rajdhani(
                            textStyle: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 17,
                                fontWeight: FontWeight.w600)),
                        enabledBorder: InputBorder.none,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none),
                  ),
                )),
            widget.eye
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        if (visibleicon == Icons.visibility_off) {
                          visibleicon = Icons.visibility;
                          obsec = false;
                        } else {
                          visibleicon = Icons.visibility_off;
                          obsec = true;
                        }
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(),
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Icon(
                          visibleicon,
                          color: Colors.black,
                          size: 22,
                        ),
                      ),
                    ),
                  )
                : Text("")
          ],
        ),
      ),
    );
  }
}

bool obsec = true;
IconData visibleicon = Icons.visibility_off;
