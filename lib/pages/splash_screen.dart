import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpalshScreen extends StatelessWidget {
  const SpalshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset("assets/icons/big_logo.svg"),
      ),
    );
  }
}
