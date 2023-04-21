import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/notifier/proxy.dart';

class ProxyWidgetTest extends ConsumerWidget {
  const ProxyWidgetTest({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final proxy = ref.watch(proxyProvider);

    final button = ElevatedButton(
      onPressed: () {
        final notifier = ref.read(p1NotifierProvider.notifier);
        notifier.updateState();
      },
      child: const Text('PUSH'),
    );

    final col = Column(children: [
      Text(proxy),
      button,
    ],);

    return col;
  }
}