import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './pages/home.dart';
import './counter/counter.dart';

class MyApp extends StatelessWidget {
  @override
  build(BuildContext context) {
    const title = 'Provider Counter';

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: MaterialApp(
        title: title,
        theme: ThemeData(primarySwatch: Colors.amber),
        home: Home(title: title),
      ),
    );
  }
}
