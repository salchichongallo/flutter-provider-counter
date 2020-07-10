import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './counter.dart';

class Count extends StatelessWidget {
  Count({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final count = context.watch<Counter>().count;
    return Text('$count', style: Theme.of(context).textTheme.headline4);
  }
}
