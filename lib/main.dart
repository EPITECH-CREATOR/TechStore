import 'package:ecomerce/screens/accueil-page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0001FC),
        body: Column(
          children: [
            SizedBox(height: 100.0),
            Center(
              child: Text(
                "LATECH",
                style: TextStyle(
                    fontFamily: "FTMONO",
                    fontWeight: FontWeight.w700,
                    fontSize: 42.0,
                    color: Color(0xffFFFFFF)),
              ),
            ),
            Center(
              child: Text(
                "TECH MARKET",
                style: TextStyle(
                  fontFamily: "FTMONO",
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 6.0,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
            SizedBox(height: 57.0),
            Container(
              padding: EdgeInsets.all(70.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff0001FC),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    offset: Offset(-5.0, -5.0),
                    blurRadius: 4.0,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: SvgPicture.asset("assets/imgs/Vector.svg"),
            ),
            SizedBox(
              height: 72.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 32.0),
              child: Container(
                width: double.infinity,
                height: 53.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AccueilPage(),
                      ),
                    );
                  },
                  child: Text(
                    "Let’s start",
                    style: TextStyle(
                      color: Color(0xff0001FC),
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      fontFamily: "FTMONO",
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
            SizedBox(height: 73.0),
            Text(
              "Skip for now",
              style: TextStyle(
                fontFamily: "FTMONO",
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
