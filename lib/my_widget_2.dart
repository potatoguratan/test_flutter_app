import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/notifier/s2.dart';


class MyWidget2 extends ConsumerWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final s2 = ref.watch(s2NotifierProvider);

    final listView = ListView.builder(
      itemCount: s2.length,
      itemBuilder: ((BuildContext context, int index) {
        final text = Text(s2[index]);
        return Card(child: text);
      }),
    );

    final button = FloatingActionButton(
      onPressed: () {
        final notifier = ref.read(s2NotifierProvider.notifier);
        notifier.updateState();
      },
      child: const Icon(Icons.add),
    );

    return Column(children: [
      button,
      Expanded(child: listView)
    ],);

    return Scaffold(
      floatingActionButton: button,
      body: listView,
    );
  }
}