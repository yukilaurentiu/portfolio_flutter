import 'package:flutter/material.dart';
import 'package:portfolio_flutter/navbar.dart';



class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: navBar(context),
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
