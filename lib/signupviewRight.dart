import 'dart:ui';

import 'package:flutter/material.dart';

class SignUpPageRight extends StatefulWidget {
  const SignUpPageRight({Key? key}) : super(key: key);

  @override
  _SignUpPageRightState createState() => _SignUpPageRightState();
}

class _SignUpPageRightState extends State<SignUpPageRight> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.red.shade900,
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/white_back_stripes.png'),
                  fit: BoxFit.cover)),
          child: Center(
            child: SizedBox(
              height: 500,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaY: 12, sigmaX: 12),
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.white.withOpacity(.3),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'images/downloadlogowithtext.png',
                      width: 300,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
