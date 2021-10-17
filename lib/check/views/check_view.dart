import "package:flutter/material.dart";

class CheckView extends StatefulWidget {
  CheckView({Key? key}) : super(key: key);

  @override
  _CheckViewState createState() => _CheckViewState();
}

class _CheckViewState extends State<CheckView> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Check page"));
  }
}
