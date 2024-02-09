import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../entity/counter.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Counter>(builder: (context, value, child) {
      return Center(
        child: Text(
          value.getCount.toString(),
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      );
    });
  }
}
