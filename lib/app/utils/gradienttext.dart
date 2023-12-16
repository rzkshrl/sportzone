import 'package:flutter/material.dart';

Widget gradientWidget(Color primary, Color secondary, Widget text) {
  return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[primary, secondary]).createShader(bounds),
      child: text);
}
