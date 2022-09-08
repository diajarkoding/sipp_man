import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../shared/theme.dart';

class VerifForm extends StatelessWidget {
  final double right;
  const VerifForm({Key? key, this.right = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: right),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kBackgroundColor,
      ),
      child: Center(
        child: TextField(
          decoration: const InputDecoration.collapsed(
            hintText: '',
          ),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
        ),
      ),
    );
  }
}
