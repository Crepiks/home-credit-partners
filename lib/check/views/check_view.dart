import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:home_credit_partners/check/views/components/qr_card.dart';
import 'package:home_credit_partners/check/views/components/qr_data.dart';

class CheckView extends StatefulWidget {
  CheckView({Key? key}) : super(key: key);

  @override
  _CheckViewState createState() => _CheckViewState();
}

class _CheckViewState extends State<CheckView> {
  String qrData = "";

  Future<void> scanQrCode() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
          '#DD0026', "Закрыть", false, ScanMode.QR);

      setState(() {
        qrData = qrCode;
      });
    } on PlatformException {
      setState(() {
        qrData = "Нет данных";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        QrCard(
          onClick: () => scanQrCode(),
        ),
        QrData(
          qrContent: qrData,
        )
      ],
    ));
  }
}
