// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  SwitchClass createState() => SwitchClass();
}

class SwitchClass extends State {
  var textValue = 'OFF';

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      ElevatedButton(
          onPressed: () {
            setState(() {
              textValue = 'ON';
              Colors.orange;
            });
          },
          onLongPress: () {
            setState(() {
              textValue = 'OFF';
            });
          },
          child: Text(
            "$textValue",
          )),
      Text(
        'Switch Button is $textValue',
        style: GoogleFonts.lato(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
        ),
      )
    ]);
  }
}
