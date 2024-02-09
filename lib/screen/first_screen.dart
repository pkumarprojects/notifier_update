import 'package:back_screen_update/screen/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../entity/counter.dart';
import '../util/session.dart';
import '../widget/counter_widget.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  void _incrementCounter() {
    setState(() {
      Provider.of<Counter>(context, listen: false).increase();
    });
  }

  void _decrementCounter() {
    setState(() {
      Provider.of<Counter>(context, listen: false).decrease();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('First Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            const CounterWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: const Icon(Icons.remove),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('<< Back')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const SecondScreen()),
                      );
                    },
                    child: const Text('Next >>')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
