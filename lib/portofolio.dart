import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/nav.dart';
import 'package:portfolio_flutter/components/nav_mobile.dart';
import 'package:portfolio_flutter/contact.dart';
import 'package:portfolio_flutter/grow_guzzle_page.dart';
import 'package:portfolio_flutter/my_skills.dart';
import 'package:portfolio_flutter/theme/color.dart';
import 'package:portfolio_flutter/travel_map_page.dart';
import 'package:portfolio_flutter/theme/theme.dart';
import 'components/burgermenu.dart';
import 'home.dart';

class Portfolio extends StatefulWidget {
  final void Function(String) updateLan;
  final String layout;
  const Portfolio({required this.updateLan, super.key, required this.layout});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final pageNav = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: widget.layout == 'mobile' ? NavMobile(updateLan: widget.updateLan) : navBar(context, pageNav, widget.updateLan)
      ),
      body: PageView(
        controller: pageNav,
        scrollDirection: Axis.vertical,
        children: [
          Home(pageNav),
          TravelMapPage(pageNav),
          GrowGuzzlePage(pageNav),
          MySkills(pageNav),
          Contact(pageNav),
        ],
      ),
      drawer: widget.layout == "mobile" ? burgerMenu(context, pageNav, widget.updateLan) : null,
    );
  }
}
