import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webdevelopment/toggle_switch.dart';

class BodyPage extends StatefulWidget {
  const BodyPage({super.key});

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'You have pushed the button this many times:',
            style: GoogleFonts.alike(
              textStyle: Theme.of(context).textTheme.displayMedium,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                '$_counter',
                style: GoogleFonts.lato(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              FloatingActionButton(
                onPressed: _decrementCounter,
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Column(
            children: [
              Text(
                'Toggle On/Off Button:',
                style: GoogleFonts.alike(
                  textStyle: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              const SwitchScreen(),
            ],
          ),
        ),
      ],
    );
  }
}
