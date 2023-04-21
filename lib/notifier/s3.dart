import 'package:riverpod_annotation/riverpod_annotation.dart';
part 's3.g.dart';

@riverpod
class S3Notifier extends _$S3Notifier {
  @override
  Future<String> build() async {
    const sec = Duration(seconds: 3);
    await Future.delayed(sec);
    return '最初のデータ';
  }

  void updateState() async {
    state = const AsyncValue.loading();

    const sec3 = Duration(seconds: 3);

    await Future.delayed(sec3);
    
    state = const AsyncValue.data('新しいデータ');
  }
}