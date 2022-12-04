// ignore_for_file: prefer_const_constructors, unused_import, implementation_imports, camel_case_types, unnecessary_import, prefer_const_literals_to_create_immutables, file_names

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

class A extends StatefulWidget {
  const A({super.key});

  @override
  State<A> createState() => _AState();
}

class _AState extends State<A> {
  @override
  Widget build(BuildContext context) {
    var scHeight = MediaQuery.of(context).size.height;
    var scWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
                height: scHeight,
                width: scWidth,
                child: Image(
                    image: AssetImage(
                      "Images/A.png",
                    ),
                    fit: BoxFit.cover)),
            Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => A(),
                          ));
                    },
                    child: SizedBox(
                        height: 100,
                        width: 220,
                        child:
                            Image(image: AssetImage("Images/Left_arrow.png")))),
                Spacer(),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => A(),
                          ));
                    },
                    child: SizedBox(
                        height: 100,
                        width: 220,
                        child: Image(
                            image: AssetImage("Images/right_arrow.png")))),
              ],
            ),
            Positioned(
                top: -40,
                left: 400,
                child: SizedBox(
                  height: 450,
                  width: 500,
                  child: Image.asset("Images/Apple.gif"),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 250.0, left: 420),
              child: GradientText(
                'For',
                style:
                    const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                gradient: LinearGradient(colors: [
                  Color(0xffE54123),
                  Colors.black,
                ]),
              ),
            ),
            Positioned(
                top: 20,
                left: 150,
                child: SizedBox(
                    height: 300,
                    width: 250,
                    child: Image.asset(
                      "Images/A.gif",
                    ))),
            Padding(
              padding: const EdgeInsets.only(top: 250.0, left: 580),
              child: GradientText(
                'Apple',
                style:
                    const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                gradient: LinearGradient(colors: [
                  Color(0xffE54123),
                  Colors.black,
                ]),
              ),
            ),
             Positioned(
                top: scHeight*.66,
                left: scWidth*.01,
                child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      "Images/Speaker_open.png",
                    ))),
          ],
        ),
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
