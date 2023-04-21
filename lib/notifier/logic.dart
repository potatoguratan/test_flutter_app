import 'package:practice/notifier/age.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'logic.g.dart';

@riverpod
String logic(LogicRef ref) {
  final age = ref.watch(ageNotifierProvider);

  if (age < 20) {
    return '未成年';
  } else {
    return '成人';
  }
}