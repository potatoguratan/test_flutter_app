import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/my_widget_1.dart';
import 'package:practice/my_widget_2.dart';
import 'package:practice/my_widget_3.dart';
import 'package:practice/my_widget_4.dart';
import 'package:practice/proxy_widget.dart';
import 'package:practice/age_count_widget.dart';

void main() {
  const app = MyApp();
  const scope = ProviderScope(child: app);
  runApp(scope);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: const [
            // MyWidget1(),
            // MyWidget2(),
            // MyWidget3(),
            // MyWidget4(),
            ProxyWidgetTest(),
            AgeCountWidget(),
          ],),
        )
      ),
    );
  }
}
