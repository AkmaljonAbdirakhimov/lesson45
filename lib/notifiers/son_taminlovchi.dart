import 'package:flutter/material.dart';
import 'package:lesson45/models/son.dart';

class SonTaminlovchi extends InheritedWidget {
  final Son son;

  SonTaminlovchi({
    super.key,
    required this.son,
    required super.child,
  });

  @override
  bool updateShouldNotify(covariant SonTaminlovchi oldWidget) {
    return oldWidget.son != son;
  }

  static SonTaminlovchi uzingniQaytar(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SonTaminlovchi>()!;
  }
}
