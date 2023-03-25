
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';

/// Display the current status of the listener
class SpeechStatusWidget extends StatelessWidget {
  const SpeechStatusWidget({
    Key? key,
    required this.speech,
  }) : super(key: key);

  final SpeechToText speech;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      color: Theme.of(context).backgroundColor,
      child: Center(
        child: speech.isListening
            ? Text(
                "Diňlenýär...",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            : Text(
                'Diňlenenok',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
      ),
    );
  }
}