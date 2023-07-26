import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_flutter/navbar.dart';

import 'components/projects_card.dart';

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
      body:  ListView(
        children: [Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: [
                SizedBox(width: 15.0),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Image(
                      image: AssetImage('images/user_kitty.jpg'),
                    ),
                  ),
                ),
                SizedBox(width: 15.0),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        'Yukiko',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Laurentiu',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Full stack developer',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Project',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ProjectsCard(onPress: (){}, image: AssetImage('images/travelmap-logo.png'), title: 'Travelmap'),
                ProjectsCard(onPress: (){}, image: AssetImage('images/lecamarade-logo.png') , title: 'Le Camarade'),
                ProjectsCard(onPress: (){}, image: AssetImage('images/user_kitty.jpg'), title: 'Timeconvie'),
                  ],
                ),

            Column(
              children: [
                Text(
                  'Contact Me',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  icon: Icon(FontAwesomeIcons.envelope),
                ),
              ],
            ),
          ],
        ),
      ],),
    );
  }
}