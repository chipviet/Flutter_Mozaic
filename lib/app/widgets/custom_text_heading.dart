import 'package:flutter/material.dart';
import 'package:mysite/core/color/colors.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:mysite/core/res/responsive.dart';

class CustomSectionHeading extends StatelessWidget {
  final String text;

  const CustomSectionHeading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 60, color: blackColor,fontWeight: FontWeight.w600),
      ),
      tablet: Text(
        text,
        style: const TextStyle(fontSize: 36, color: blackColor,fontWeight: FontWeight.w600),
      ),
      mobile: Text(
        text,
        style: const TextStyle(fontSize: 26, color: blackColor,fontWeight: FontWeight.w600),
      ),
    );
  }
}

class CustomSectionSubHeading extends StatelessWidget {
  final String text;

  const CustomSectionSubHeading({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Responsive(
      desktop: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: gray_500,
          fontSize: 18,
          fontWeight: FontWeight.w300
        ),
      ),
      tablet: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: gray_500,
          fontSize: 16,
          fontWeight: FontWeight.w300
        ),
      ),
      mobile: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: gray_500,
          fontSize: 13,
          fontWeight: FontWeight.w300
        ),
      ),
    );
  }
}
