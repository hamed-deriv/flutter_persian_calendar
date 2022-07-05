import 'package:flutter/material.dart';

class ValueSelector<T> extends StatelessWidget {
  const ValueSelector({
    required this.value,
    Key? key,
    this.leftAction = const Icon(Icons.arrow_left_rounded),
    this.rightAction = const Icon(Icons.arrow_right_rounded),
    this.leftActionHandler,
    this.rightActionHandler,
  }) : super(key: key);

  final T value;

  final Widget leftAction;
  final Widget rightAction;

  final void Function(T)? leftActionHandler;
  final void Function(T)? rightActionHandler;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          child: leftAction,
          onPressed: leftActionHandler == null
              ? null
              : () => leftActionHandler?.call(value),
        ),
        Expanded(child: Center(child: Text('$value'))),
        TextButton(
          child: rightAction,
          onPressed: rightActionHandler == null
              ? null
              : () => rightActionHandler?.call(value),
        )
      ],
    );
  }
}
