import 'package:counter/widgets/number.dart';
import 'package:flutter/material.dart';

const double iconButtonSize = 56;

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => CounterPageState();
}

class CounterPageState extends State<CounterPage> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xfff2bbd1), Color(0xffd4bbef), Color(0xffc6bafa)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding:
                    EdgeInsets.only(top: 40), //apply padding to all four sides
                child: Text(
                  'Counter',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0a3766),
                  ),
                ),
              ),
            ),
            Center(
                child: NumberWidget(
              count: count,
            )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4,
                          color: const Color(0xff0a3766),
                        ),
                      ),
                      child: IconButton(
                        iconSize: iconButtonSize,
                        icon: const Icon(Icons.remove),
                        onPressed: () => setState(() {
                          count--;
                          if (count < 0) count = 0;
                        }),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4,
                          color: const Color(0xff0a3766),
                        ),
                      ),
                      child: IconButton(
                        iconSize: iconButtonSize,
                        icon: const Icon(Icons.add),
                        onPressed: () => setState(() {
                          count++;
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
