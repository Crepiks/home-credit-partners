import "package:flutter/material.dart";
import 'package:home_credit_partners/common/colors.dart';

class QrCard extends StatelessWidget {
  const QrCard({Key? key, required this.onClick}) : super(key: key);

  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: SizedBox(
          width: double.infinity,
          height: 200,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              "Сканировать QR код покупателя",
                              style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Image(
                    image: AssetImage("assets/images/qr.png"),
                    width: 120,
                  )
                ],
              ))),
    );
  }
}
