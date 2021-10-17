import "package:flutter/material.dart";
import 'package:home_credit_partners/common/colors.dart';

class QrData extends StatefulWidget {
  QrData({Key? key, this.qrContent = ""}) : super(key: key);

  final String qrContent;

  @override
  _QrDataState createState() => _QrDataState();
}

class _QrDataState extends State<QrData> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 200,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 30),
          padding: EdgeInsets.symmetric(vertical: 30),
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child:
                        Text(widget.qrContent, style: TextStyle(height: 1.5))),
              ],
            ),
          )),
        ));
  }
}
