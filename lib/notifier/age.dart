import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'age.g.dart';

@riverpod
class ageNotifier extends _$ageNotifier {
  @override
  int build() {
    return 0;
  }

  void updateState() {
    state ++;
  }
}