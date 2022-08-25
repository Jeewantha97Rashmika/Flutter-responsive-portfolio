import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/components/my_info.dart';

class SideManu extends StatelessWidget {
  const SideManu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
              child: SingleChildScrollView(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                AreaInforText(
                  title: "Residence",
                  text: "Sri Lanka",
                ),
                AreaInforText(
                  title: "City",
                  text: "Kandy",
                ),
                AreaInforText(
                  title: "Birthday",
                  text: "1997.07.19",
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Text(
                    "Skills",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
                Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: TweenAnimationBuilder(
                        tween: Tween<double>(begin: 0, end: 1),
                        duration: defaultDuration,
                        builder: (context, double value, child) => Stack(
                          fit: StackFit.expand,
                          children: [
                            CircularProgressIndicator(
                              value: value,
                              color: primaryColor,
                              backgroundColor: darkColor,
                            ),
                            Center(
                                child: Text(
                              (value * 100).toInt().toString() + "%",
                              style: Theme.of(context).textTheme.subtitle1,
                            ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Text("Flutter",
                        style: Theme.of(context).textTheme.subtitle1),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class AreaInforText extends StatelessWidget {
  const AreaInforText({
    Key? key,
    this.title,
    this.text,
  }) : super(key: key);
  final String? title;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            text!,
          )
        ],
      ),
    );
  }
}
