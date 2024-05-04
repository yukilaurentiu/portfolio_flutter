import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_flutter/navbar.dart';
import 'package:portfolio_flutter/theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components/projects_card.dart';
import 'footer.dart';

class Home extends StatefulWidget {
  const Home(this.pageNav, {super.key});
  final PageController pageNav;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // Handle error if the URL can't be launched
      print("Could not launch $url");
    }
  }

  List<String> urls = [
    'https://www.linkedin.com/in/yukikolaurentiu/',
    'https://github.com/yukilaurentiu',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50,bottom: 100),
                child: SizedBox(
                  width: 350, // Set the desired width for the Card
                  height: 450, // Set the desired height for the Card
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(30.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: const Image(
                              image: AssetImage('images/user_kitty.jpg'),
                              width: 160, // Set the desired width
                              height: 160, // Set the desired height
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Nice to meet you, I'm Yuki!",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, right: 40),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                              style: TextStyle(
                                color: textGreenColor,
                                height: 1.5,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "I'm a ",
                                  style: TextStyle(fontWeight: FontWeight.w200),
                                ),
                                TextSpan(
                                  text: "Fullstack Developer",
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                                TextSpan(
                                  text:
                                      " is who eager to dive into real-world projects and grow through hands-on experience within a team environment",
                                  style: TextStyle(fontWeight: FontWeight.w200),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              iconSize: 30,
                              padding: EdgeInsets.zero,
                              icon: Icon(FontAwesomeIcons.linkedin),
                              onPressed: () => _launchURL(urls[0]),
                            ),
                            IconButton(
                              iconSize: 30,
                              padding: EdgeInsets.zero,
                              icon: Icon(FontAwesomeIcons.github),
                              onPressed: () => _launchURL(urls[1]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add functionality for the button here
                },
                child: Icon(Icons.add)
              ),
            ],
          ),
        ),
      ),
      // Add elevation for visual effect

      // body: ListView(
      //   children: [
      //     Column(
      //       crossAxisAlignment: CrossAxisAlignment.stretch,
      //       children: <Widget>[
      //         Row(
      //           children: [
      //             SizedBox(width: 15.0),
      //             Expanded(
      //               child: Padding(
      //                 padding: EdgeInsets.all(20.0),
      //                 child: Image(
      //                   image: AssetImage('images/user_kitty.jpg'),
      //                 ),
      //               ),
      //             ),
      //             SizedBox(width: 15.0),
      //             Padding(
      //               padding: EdgeInsets.all(10.0),
      //               child: Column(
      //                 children: [
      //                   Text(
      //                     'Yukiko',
      //                     style: TextStyle(
      //                       fontSize: 40.0,
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                   Text(
      //                     'Laurentiu',
      //                     style: TextStyle(
      //                       fontSize: 40.0,
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                   Text(
      //                     'Full stack developer',
      //                     style: TextStyle(
      //                       fontSize: 20.0,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //         Column(
      //           children: [
      //             const Text(
      //               'Project',
      //               style: TextStyle(
      //                 fontSize: 40.0,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //             ProjectsCard(
      //                 onPress: () {},
      //                 image: AssetImage('images/travelmap-logo.png'),
      //                 title: 'Travelmap'),
      //             ProjectsCard(
      //                 onPress: () {},
      //                 image: AssetImage('images/lecamarade-logo.png'),
      //                 title: 'Le Camarade'),
      //             ProjectsCard(
      //                 onPress: () {},
      //                 image: AssetImage('images/user_kitty.jpg'),
      //                 title: 'Timeconvie'),
      //           ],
      //         ),
      //         Column(
      //           children: [
      //             const Text(
      //               'Contact Me',
      //               style: TextStyle(
      //                 fontSize: 30.0,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: () {
      //                 Navigator.pushNamed(context, '/home');
      //               },
      //               icon: Icon(FontAwesomeIcons.envelope),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
      //   bottomNavigationBar: Container(
      //     color: Colors.amber,
      //     child: Column(
      //       mainAxisSize: MainAxisSize.min,
      //       children: [
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             IconButton(
      //               icon: Icon(FontAwesomeIcons.linkedin),
      //               onPressed: () => _launchURL(urls[0]),
      //             ),
      //             IconButton(
      //               icon: Icon(FontAwesomeIcons.github),
      //               onPressed: () => _launchURL(urls[1]),
      //             ),],),
      //
      // Row(mainAxisAlignment: MainAxisAlignment.center,
      // children: [Padding(
      //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 10.0),
      //   child: Text('© Yukiko Laurentiu 2023'),
      // ),]
      // )
      //
      //     ],),
    );
  }
}
