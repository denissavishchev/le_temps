import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';



class Buttons extends StatefulWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  ButtonsState createState() => ButtonsState();
}

class ButtonsState extends State<Buttons> {

  NeumorphicStyle style = NeumorphicStyle(
      shape: NeumorphicShape.flat,
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
      shadowDarkColor: Colors.white,
      shadowLightColor: Colors.white,
      lightSource: LightSource.bottom,
      color: const Color(0xff375290).withOpacity(0.25)
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        width: double.maxFinite,
        margin: const EdgeInsets.only(left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NeumorphicButton(
              onPressed: () {
                print('Click');
              },
              style: style,
              padding: const EdgeInsets.all(2),
              child: Icon(
                Icons.pets,
                size: 60,
                color: Colors.black.withOpacity(0.5),
              ),
            ),

            NeumorphicButton(
              onPressed: () {
                print('Click');
              },
              style: style,
              padding: const EdgeInsets.all(2),
              child: Icon(
                Icons.extension,
                size: 60,
                color: Colors.black.withOpacity(0.5),
              ),
            ),

            NeumorphicButton(
              onPressed: () {
                print('Click');
              },
              style: style,
              padding: const EdgeInsets.all(2),
              child: Icon(
                Icons.cookie,
                size: 60,
                color: Colors.black.withOpacity(0.5),
              ),
            ),

            NeumorphicButton(
              onPressed: () {
                print('Click');
              },
              style: style,
              padding: const EdgeInsets.all(2),
              child: Icon(
                Icons.lightbulb,
                size: 60,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ],
        ));
  }
}


