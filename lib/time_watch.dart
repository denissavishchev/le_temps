import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';
//redTest234iuiuiuiui
class TimeWatch extends StatefulWidget {
  const TimeWatch({Key? key}) : super(key: key);

  @override
  TimeWatchState createState() => TimeWatchState();
}

class TimeWatchState extends State<TimeWatch> {
  TimeOfDay _timeOfDay = TimeOfDay.now();
  DateTime _dateTime = DateTime.now();
  String strDigit(int n) => n.toString().padLeft(2, '0');
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_timeOfDay.minute != TimeOfDay.now().minute ) {
        setState(() {
          _dateTime = DateTime.now();
          _timeOfDay = TimeOfDay.now();
        });
      }
    });
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_dateTime.second != DateTime.now().second) {
        setState(() {
          _dateTime = DateTime.now();
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Text(
      "${_timeOfDay.hour}:${strDigit(_timeOfDay.minute)}:${strDigit(_dateTime.second)}",
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 40,
        color: Color(0xffc1e5fd),
      ),
    );
  }
}

class TimeData extends StatefulWidget {
  const TimeData({Key? key}) : super(key: key);

  @override
  TimeDataState createState() => TimeDataState();
}

class TimeDataState extends State<TimeData> {


  DateTime _dateTime = DateTime.now();
  String strDigit(int n) => n.toString().padLeft(2, '0');
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_dateTime.second != DateTime.now().second) {
        setState(() {
          _dateTime = DateTime.now();
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat('dd MMMM yyyy').format(DateTime.now()),
      // "${_dateTime.day}.${_dateTime.month}.${_dateTime.year}",
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          // fontFamily: 'CormorantSC-Light',
          fontSize: 30,
          color: Colors.black87
      ),
    );
  }
}