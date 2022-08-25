import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: SideManu()),
              Expanded(
                flex: 7,
                child: Container(
                  color: Color.fromARGB(255, 29, 78, 214),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
