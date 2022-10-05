import 'package:avaliacaoflutter/routes.dart';
import 'package:avaliacaoflutter/routes/item_page.dart';
import 'package:flutter/material.dart';
import 'package:avaliacaoflutter/routes/home_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 40),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = !selected;
                      });
                    },
                    child: AnimatedContainer(
                      height: selected ? 64 : 64,
                      color: selected ? Colors.blue[100] : Colors.white,
                      alignment: selected
                          ? Alignment.center
                          : AlignmentDirectional.center,
                      duration: const Duration(seconds: 2),
                      curve: Curves.fastOutSlowIn,
                      child: selected
                          ? const FlutterLogo(size: 72)
                          : CircleAvatar(
                              child: Image(
                                width: 64,
                                height: 64,
                                image: AssetImage('lib/assets/img.png'),
                              ),
                            ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: Text(
                          'William',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                        Text('william@studioalva.co')
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 57,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RouterGenerator.detailPage);
                },
                child: Text(
                  'View Profile',
                  style: TextStyle(color: Color(0xff7156FF)),
                ),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Colors.grey[300],
                  // padding: EdgeInsets.all(20),
                ),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Image.asset('lib/assets/map-pin.png'),
              title: Text(
                'Address',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              leading:
                  Container(child: Image.asset('lib/assets/credit-card.png')),
              title: Text(
                'Payment method',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              leading: Image.asset('lib/assets/help-circle.png'),
              title: Text(
                'Help',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              leading: Image.asset('lib/assets/settings.png'),
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 40),
            InkWell(
              child: ListTile(
                title: Text('About'),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(RouterGenerator.itemPage);
              },
            ),
            InkWell(
              child: ListTile(
                title: Text('Log out'),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(RouterGenerator.loginPage);
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("lib/assets/icon.png")),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("lib/assets/icon-1.png")),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("lib/assets/icon-2.png"),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("lib/assets/icon-placeholder.png")),
            label: '',
          ),
        ],
      ),
    );
  }
}
