import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/notifier/s1.dart';

class MyWidget1 extends ConsumerWidget {
  const MyWidget1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final s1 = ref.watch(s1NotifierProvider);

    final button = ElevatedButton(
      onPressed: () {
        final notifier = ref.read(s1NotifierProvider.notifier);
        notifier.updateState();
      },
      child: const Text('PUSH')
    );

    final col = Column(children: [
      Text('$s1'),
      button
    ],);

    return col;
  }
}