import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/nav_menubutton.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: <Widget>[
            Row(
              children: [
                NavMenuButton(
                    onPress: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    menuText: 'Home'),
                SizedBox(
                  width: 10.0,
                ),
                NavMenuButton(
                    onPress: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    menuText: 'About'),
                SizedBox(
                  width: 10.0,
                ),
                NavMenuButton(
                    onPress: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    menuText: 'Project'),
                SizedBox(
                  width: 10.0,
                ),
                NavMenuButton(
                    onPress: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    menuText: 'Contact'),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
          ],
        ),
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: [
                SizedBox(width: 20.0),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Image(
                    image: AssetImage('images/user_kitty.jpg'),
                  ),
                ),
                SizedBox(width: 20.0),
                Column(
                  children: [
                    Text(
                      'Yukiko Laurentiu',
                      style: TextStyle(
                        fontSize: 40.0, fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Full stack developer',style: TextStyle(
                      fontSize: 20.0,
                    ), ),
                  ],
                ),
              ],
            ),
            Row(

            ),
          ],
        ));
  }
}
