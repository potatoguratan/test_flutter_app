import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'basic.g.dart';

@riverpod
int basic(BasicRef ref) {
  ref.watch(basicProvider);
  return 123;
}
