import 'package:flutter/material.dart';

class PlusButton extends StatelessWidget {
  final onPress;

  const PlusButton({Key? key, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      color: Colors.blue,
      child: IconButton(
        onPressed: onPress,
        icon: const Icon(Icons.add),
      ),
    );
  }
}
