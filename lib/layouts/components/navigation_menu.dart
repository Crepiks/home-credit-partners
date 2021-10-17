import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_credit_partners/common/colors.dart';

final defaultIconColor = AppColors.blackColor;
final primaryIconColor = AppColors.primaryColor;
const defaultTextStyle = TextStyle(
    color: AppColors.blackColor, fontSize: 18, fontWeight: FontWeight.w500);
const primaryTextStyle = TextStyle(
    color: AppColors.primaryColor, fontSize: 18, fontWeight: FontWeight.w500);

class NavigationMenu extends StatelessWidget {
  const NavigationMenu(
      {Key? key, required this.activeIndex, required this.onClick})
      : super(key: key);

  final int activeIndex;
  final Function onClick;

  vibrate() {
    HapticFeedback.heavyImpact();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 80,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: AppColors.whiteColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  vibrate();
                  onClick(0);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.qrcode,
                        size: 24,
                        color: activeIndex == 0
                            ? primaryIconColor
                            : defaultIconColor,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Скан",
                        style: activeIndex == 0
                            ? primaryTextStyle
                            : defaultTextStyle,
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  vibrate();
                  onClick(1);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.listUl,
                        size: 22,
                        color: activeIndex == 1
                            ? primaryIconColor
                            : defaultIconColor,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Товары",
                        style: activeIndex == 1
                            ? primaryTextStyle
                            : defaultTextStyle,
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
