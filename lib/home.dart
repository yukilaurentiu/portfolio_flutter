import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_flutter/components/down_btn.dart';
import 'package:portfolio_flutter/components/en_translate.dart';
import 'package:portfolio_flutter/theme/theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_flutter/components/paragraph.dart';

import 'components/translation.dart';



class Home extends StatefulWidget {
  const Home(this.pageNav, {super.key});
  final PageController pageNav;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      await launchUrl(url);
    } else {
      // Handle error if the URL can't be launched
      print("Could not launch $url");
    }
  }


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
                   color: Colors.white.withOpacity(0.7),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(25.0),
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
                          t('home-t'),
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900, fontSize: 23,),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, right: 40),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text:  TextSpan(
                              style: const TextStyle(
                                color: textGreenColor,
                                height: 1.5,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: t("home-p"),
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w200,
                                ),),
                                TextSpan(
                                  text: t("home-p2"),
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w700,),
                                ),
                                TextSpan(
                                  text:
                                  t("home-p3"),
                                  style:Theme.of(context).textTheme.titleSmall?.copyWith(
                                      fontWeight: FontWeight.w200,),
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
                              icon: const Icon(FontAwesomeIcons.linkedin, color: textPinkColor),
                              onPressed: () => _launchUrl(Uri.parse(urls[1]['y-l']))
                            ),
                            IconButton(
                              iconSize: 30,
                              padding: EdgeInsets.zero,
                              icon: const Icon(FontAwesomeIcons.github, color: textPinkColor),
                              onPressed: () => _launchUrl(Uri.parse(urls[1]['y-g'])),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              downBtn(textColor: textGreenColor, onPressed: ()=> widget.pageNav.jumpToPage(1))
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
