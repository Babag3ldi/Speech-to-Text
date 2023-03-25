import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SessionOptionsWidget extends StatelessWidget {
  const SessionOptionsWidget(
      this.currentLocaleId,
      this.switchLang,
      this.localeNames,
      this.logEvents,
      this.switchLogging,
      this.pauseForController,
      this.listenForController,
      this.onDevice,
      this.switchOnDevice,
      {Key? key})
      : super(key: key);

  final String currentLocaleId;
  final void Function(String?) switchLang;
  final void Function(bool?) switchLogging;
  final void Function(bool?) switchOnDevice;
  final TextEditingController pauseForController;
  final TextEditingController listenForController;
  final List<LocaleName> localeNames;
  final bool logEvents;
  final bool onDevice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Dil saýlaň: '),
              DropdownButton<String>(
                onChanged: (selectedVal) => switchLang(selectedVal),
                value: currentLocaleId,
                items: localeNames
                    .map(
                      (localeName) => DropdownMenuItem(
                        value: localeName.localeId,
                        child: Text(localeName.name),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
          Row(
            children: [
              Text('Duruzýan wagty: '),
              Container(
                  padding: EdgeInsets.only(left: 8),
                  width: 80,
                  height: 35,
                  child: TextFormField(
                    decoration: const  InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: Colors.indigo), 
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: Colors.greenAccent), 
                      ),
                    ),
                    controller: pauseForController,
                  )),
              Container(
                  padding: EdgeInsets.only(left: 16),
                  child: Text('Diňleýän wagty: ')),
              Container(
                  padding: EdgeInsets.only(left: 8),
                  width: 80,
                  height: 35,
                  child: TextFormField(
                    decoration: const  InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: Colors.indigo), 
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: Colors.greenAccent), 
                      ),
                    ),
                    controller: listenForController,
                  )),
            ],
          ),
          Row(
            children: [
              Text('Gepleşigi duruzmak: '),

              ///On device:
              Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.indigo,
                value: onDevice,
                onChanged: switchOnDevice,
              ),
              // Text('Waka: '),
              // Checkbox(
              //   value: logEvents,
              //   onChanged: switchLogging,
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
