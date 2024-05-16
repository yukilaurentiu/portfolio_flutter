import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_flutter/components/btnStyle.dart';
import 'package:portfolio_flutter/components/paragraph.dart';
import 'package:portfolio_flutter/theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:dev_icons/dev_icons.dart';
import 'package:portfolio_flutter/components/tech_icon.dart';
import 'components/down_btn.dart';
import 'components/projects_card.dart';
import 'components/skills_style.dart';

class Contact extends StatefulWidget {
  const Contact(this.pageNav, {super.key});
  final PageController pageNav;

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
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
      backgroundColor: lavender,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: lavender,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Text(
                      'Contact me',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: textLavender),
                    ),
                  ),
                  const SizedBox(height: 80),
                  const Icon(
                    Icons.mail,
                    size: 40,
                    color: darkLavender,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {
                        Clipboard.setData(const ClipboardData(
                            text: 'laurentiu.yuki@gmail.com'));
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Email address copied')),
                        );
                      },
                      child: Text(
                        'laurentiu.yuki@gmail.com',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(color: textLavender, fontSize: 23),
                      ),
                    ),
                  ),
                  const SizedBox(height: 80),
                  BtnStyle(
                    onPress: () => _launchUrl(Uri.parse(
                        'https://github.com/yukilaurentiu/my_cv/blob/main/YukikoLaurentiuCV.pdf')),
                    btnColor: textLavender,
                    text: 'Download CV',
                    size: Size(220, 50),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: textGreenColor,
              child: Padding(
                padding: const EdgeInsets.all(70.0),
                child: Center(
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: "©",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w200,
                                    color: textLight,
                                  ),
                            ),
                            TextSpan(
                              text: " Yukiko Laurentiu.",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: textLight,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'All Rights reserved.',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: textLight,
                            ),
                      ),
                      const SizedBox(height: 15),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: const TextStyle(
                            color: lightGreen,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Design by ",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w200,
                                    color: textLight,
                                  ),
                            ),
                            TextSpan(
                              text: "Lisa Brune",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: textLight,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
