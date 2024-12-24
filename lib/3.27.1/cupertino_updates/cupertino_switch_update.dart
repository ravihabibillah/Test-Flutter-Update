import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSwitchUpdate extends StatefulWidget {
  const CupertinoSwitchUpdate({super.key});

  @override
  State<CupertinoSwitchUpdate> createState() => _CupertinoSwitchUpdateState();
}

class _CupertinoSwitchUpdateState extends State<CupertinoSwitchUpdate> {
  bool value = false;

  void updateValue() {
    setState(() {
      value = !value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: value,
      onChanged: (value) => updateValue(),
      // trackColor: Color(0XFF000000), // Deprecated
      inactiveTrackColor: Colors.grey, // New
    );
  }
}
