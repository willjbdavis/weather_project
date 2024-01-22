import 'package:flutter/material.dart';

class Or extends StatelessWidget {
  final bool Function() predicate;
  final WidgetBuilder trueBuilder;
  final WidgetBuilder? falseBuilder;

  const Or({
    super.key,
    required this.predicate,
    required this.trueBuilder,
    this.falseBuilder,
  });

  @override
  Widget build(BuildContext context) {
    if (predicate()) {
      return trueBuilder(context);
    } else {
      if (falseBuilder != null) {
        return falseBuilder!(context);
      } else {
        return const SizedBox.shrink();
      }
    }
  }
}
