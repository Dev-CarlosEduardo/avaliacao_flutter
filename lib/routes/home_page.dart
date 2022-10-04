import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:avaliacaoflutter/routes/login_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    final pages = [
      Column(
        children: [
          Expanded(
              child: Image.asset(
            'lib/assets/logo1.png',
          )),
          Text(
            '',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
        ],
      ),
      Column(
        children: [
          Expanded(
              child: Image.asset(
            'lib/assets/logo2.png',
            width: 500,
            height: 300,
          )),
          Text(
            '',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
        ],
      ),
      Column(
        children: [
          Expanded(
              child: Image.asset(
            'lib/assets/logo3.png',
            width: 500,
            height: 300,
          )),
          Text(
            '',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
        ],
      ),
      Column(
        children: [
          Expanded(
              child: Image.asset(
            'lib/assets/logo4.png',
          )),
          Text(
            'Create brilliant learning\n pathways',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
        ],
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('you',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24)),
                Text('learn',
                    style: TextStyle(
                        color: Color(0xff7257FE),
                        fontWeight: FontWeight.bold,
                        fontSize: 24))
              ],
            ),
            SizedBox(
              height: 350,
              child: PageView.builder(
                controller: controller,
                // itemCount: pages.length,
                itemBuilder: (_, index) {
                  return pages[index % pages.length];
                },
              ),
            ),
            SizedBox(height: 30),
            SmoothPageIndicator(
              controller: controller,
              count: pages.length,
              effect: WormEffect(
                dotHeight: 7,
                dotWidth: 7,
                type: WormType.thin,
                // strokeWidth: 5,
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Create account'),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  // backgroundColor: Color(0xff6B4EFF),
                  padding: EdgeInsets.all(20),
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Have an account? '),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: ((context) => LoginPage())));
                  },
                  child: Text(
                    'Log in',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xff7156FF)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

final colors = const [
  Colors.red,
  Colors.green,
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.blue,
  Colors.amber,
];
