import 'package:back_screen_update/screen/first_screen.dart';
import 'package:back_screen_update/widget/counter_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../entity/counter.dart';
import '../util/session.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            const CounterWidget(),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const FirstScreen(),
                  ));
                },
                child: const Text('Next >>'))
          ],
        ),
      ),
    );
  }
}
