import "package:flutter/material.dart";
import 'package:home_credit_partners/check/views/check_view.dart';
import 'package:home_credit_partners/common/colors.dart';
import 'package:home_credit_partners/layouts/components/navigation_menu.dart';
import 'package:home_credit_partners/layouts/safe_area_layout.dart';
import 'package:home_credit_partners/products/views/products_view.dart';

class NavigationLayout extends StatefulWidget {
  NavigationLayout({
    Key? key,
    this.backgroundColor = AppColors.backgroundColor,
  }) : super(key: key);

  final Color backgroundColor;

  @override
  _NavigationLayoutState createState() => _NavigationLayoutState();
}

class _NavigationLayoutState extends State<NavigationLayout> {
  int _activeIndex = 0;
  final screens = [CheckView(), ProductsView()];

  void navigateNewPage(newActiveIndex) {
    setState(() {
      _activeIndex = newActiveIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeAreaLayout(
        backgroundColor: widget.backgroundColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              SizedBox(
                  child: screens[_activeIndex],
                  width: double.infinity,
                  height: double.infinity),
              Align(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: NavigationMenu(
                      activeIndex: _activeIndex,
                      onClick: (activeIndex) => navigateNewPage(activeIndex)),
                ),
                alignment: Alignment.bottomCenter,
              )
            ],
          ),
        ));
  }
}
