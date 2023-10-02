import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/home_page.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
              bottom: 30, left: defaultMargin, right: defaultMargin),
          decoration: BoxDecoration(
              color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                imageUrl: 'assets/fi_globe.png',
                isSelected: true,
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/fi_book-open.png',
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/fi_credit-card.png',
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/fi_settings.png',
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: [buildContent(), customBottomNavigation()],
        ));
  }
}
