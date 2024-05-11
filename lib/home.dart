import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    const List<GButton> tabs = [
      GButton(
          backgroundColor: Color.fromRGBO(242, 242, 242, 1),
          iconSize: 28,
          semanticLabel: "account",
          icon: IconData(0xe040, fontFamily: 'MaterialIcons')), //account
      GButton(
          backgroundColor: Color.fromRGBO(242, 242, 242, 1),
          iconSize: 28,
          semanticLabel: "explore",
          icon: IconData(0xe248, fontFamily: 'MaterialIcons')), //explore
      GButton(
          backgroundColor: Color.fromRGBO(242, 242, 242, 1),
          iconSize: 28,
          semanticLabel: "sendMoney",
          icon: IconData(0xf00cc, fontFamily: 'MaterialIcons')), //landing
      GButton(
          backgroundColor: Color.fromRGBO(242, 242, 242, 1),
          iconSize: 28,
          semanticLabel: "borrow",
          icon: IconData(0xe19f, fontFamily: 'MaterialIcons')), //borrow
      GButton(
          backgroundColor: Color.fromRGBO(242, 242, 242, 1),
          iconSize: 28,
          semanticLabel: "history",
          icon: IconData(0xe314, fontFamily: 'MaterialIcons')), //history
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GNav(
          selectedIndex: 2,
          style: GnavStyle.google,
          color: Colors.black26,
          activeColor: const Color.fromRGBO(126, 126, 126, 1),
          padding: const EdgeInsets.all(20),
          backgroundColor: Colors.transparent,
          onTabChange: (index) => {},
          tabs: tabs,
        ),
      ),
    );
  }
}
