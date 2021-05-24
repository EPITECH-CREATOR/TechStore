import 'package:flutter/material.dart';

class AccueilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text(
              "Home",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 32.0,
                fontFamily: "SFPROTEXT",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
