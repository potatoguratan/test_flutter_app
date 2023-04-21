import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/notifier/s3.dart';

class MyWidget3 extends ConsumerWidget {
  const MyWidget3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final s3 = ref.watch(s3NotifierProvider);
    
    final widget = s3.when(
      data: (d) => Text('$d'),
      error: (e, s) => Text('error $e'),
      loading: () => Text('準備中'),
    );

    final button = ElevatedButton(
      onPressed: () {
        final notifier = ref.read(s3NotifierProvider.notifier);
        notifier.updateState();
      },
      child: const Text('PUSH')
    );
    
    return Column(children: [
      widget,
      button,
    ],);
  }
}