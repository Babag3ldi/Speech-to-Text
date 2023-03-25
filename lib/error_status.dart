
import 'package:flutter/material.dart';

/// Display the current error status from the speech
/// recognizer
class ErrorWidgets extends StatelessWidget {
  const ErrorWidgets({
    Key? key,
    required this.lastError,
  }) : super(key: key);

  final String lastError;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(
            'Ýalnyşlyk',  ///Error Status
            style: TextStyle(fontSize: 22.0),
          ),
        ),
        Center(
          child: Text(lastError),
        ),
      ],
    );
  }
}