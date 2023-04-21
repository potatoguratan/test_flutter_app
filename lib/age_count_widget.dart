import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/notifier/logic.dart';
import 'package:practice/notifier/age.dart';

class AgeCountWidget extends ConsumerWidget {
  const AgeCountWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final text = ref.watch(logicProvider);

    final button = ElevatedButton(
      onPressed: () {
        final notifier = ref.read(ageNotifierProvider.notifier);
        notifier.updateState();
      },
      child: const Text('PUSH')
    );

    final col = Column(children: [
      Text(text),
      button,
    ],);

    return col;
  }
}