import 'package:flutter/material.dart';
import 'package:le_temps/time_watch.dart';
import 'package:le_temps/quote.dart';
import 'package:le_temps/buttons.dart';

void main() {
  runApp(const Temps());
}

class Temps extends StatelessWidget {
  const Temps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TempsApp(),
    );
  }
}

class TempsApp extends StatefulWidget {
  const TempsApp({Key? key}) : super(key: key);
  @override
  State<TempsApp> createState() => _TempsAppState();
}
class _TempsAppState extends State<TempsApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.png'),
              fit: BoxFit.cover,
            )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(width: 180),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(height: 360,),
                      Container(
                          padding: const EdgeInsets.only(right: 20),
                          height: 50,
                          // width: 200,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            boxShadow: [BoxShadow(
                              offset: const Offset(-2, -2),
                              blurRadius: 10,
                              color: const Color(0xff0574ad).withOpacity(0.5),
                              spreadRadius: 2,
                            ),
                            ],
                          ),
                          child: const TimeWatch()),
                      const SizedBox(height: 10,),
                      Container(
                        padding: const EdgeInsets.only(right: 20),
                        height: 40,
                        // width: 200,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          boxShadow: [BoxShadow(
                            offset: const Offset(-2, -2),
                            blurRadius: 10,
                            color: const Color(0xff0574ad).withOpacity(0.8),
                            spreadRadius: 2,
                          ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 36,
                              color: Colors.black.withOpacity(0.5)
                            ),
                            const Text(
                              'London',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  // fontFamily: 'CormorantSC-Light',
                                  fontSize: 30,
                                  color: Colors.black87
                            ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                          padding: const EdgeInsets.only(right: 20),
                          height: 40,
                          // width: 200,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            boxShadow: [BoxShadow(
                              offset: const Offset(-2, -2),
                              blurRadius: 10,
                              color: const Color(0xff0574ad).withOpacity(0.8),
                              spreadRadius: 2,
                            ),
                            ],
                          ),
                          child: const TimeData()),
                    ],
                  ),

                ],
              ),
              const SizedBox(height: 30,),
              Container(
                height: 100,
                margin: const EdgeInsets.only(right: 16, left: 30),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  boxShadow: [BoxShadow(
                    offset: const Offset(-2, -2),
                    blurRadius: 5,
                    color: const Color(0xff0574ad).withOpacity(0.8),
                    spreadRadius: 2,
                  ),
                  ],
                ),
                child: const Quote(),
              ),
              const SizedBox(height: 50,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: const Color(0xff0574ad).withOpacity(0.3),
                ),
                height: 90,
                child: const Buttons(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

