import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lottery App'),
          backgroundColor: Color(0xff330000),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Lottery winning number 004',
                style: GoogleFonts.roboto(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                color:
                    x == 4 ? const Color(0xffCAC5FF) : const Color(0xffd1d1d1),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(blurRadius: 5.0, blurStyle: BlurStyle.normal)
                ],
              ),
              child: x == 4
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.done_all,
                          color: Color(0xff00ff00),
                          size: 35,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Congratulations!\nYou won the lottery.',
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error,
                          color: Color(0xffff0000),
                          size: 35,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Better luck next time,\nyour number is $x! Try again',
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff330000),
          onPressed: () {
            x = random.nextInt(5);
            setState(() {});
            print(x);
            print('tap');
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
