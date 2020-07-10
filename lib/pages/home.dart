import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../counter/count.dart';
import '../counter/counter.dart';

class Home extends StatelessWidget {
  Home({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  build(context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: _buildBody(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<Counter>().increment(),
        child: Icon(Icons.add),
      ),
    );
  }

  _buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Counter:'),
          Count(),
          Container(
            margin: EdgeInsets.only(top: 12),
            child: RaisedButton(
              onPressed: () => context.read<Counter>().reset(),
              child: Text('RESET'),
            ),
          )
        ],
      ),
    );
  }
}
