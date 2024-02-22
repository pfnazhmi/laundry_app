import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({
    super.key,
    required this.label,
    required this.onTap,
    required this.isExpand,
  });

  final String label;
  final Function onTap;
  final bool? isExpand;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Align(
        alignment: const Alignment(0, 5),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.greenAccent[400]!,
                    offset: const Offset(2, 0),
                    blurRadius: 20)
              ]),
          width: isExpand == null
              ? null
              : isExpand!
                  ? double.infinity
                  : null,
          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(label),
        ),
      ),
    );
  }
}
