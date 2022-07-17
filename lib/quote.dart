import 'package:flutter/material.dart';

class Quote extends StatefulWidget {
  const Quote({Key? key}) : super(key: key);

  @override
  QuoteState createState() => QuoteState();
}

class QuoteState extends State<Quote> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: const Text(
        'Your time is limited, so dont waste it living someone elses life. Dont be trapped by dogma – which is living with the results of other peoples thinking.',
        maxLines: 5,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            // fontFamily: 'CormorantSC-Light',
            fontSize: 18,
            color: Color(0xff84bef4)
        ),
      ),
    );
  }
}