import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectionAreaUpdate extends StatefulWidget {
  const SelectionAreaUpdate({super.key});

  @override
  State<SelectionAreaUpdate> createState() => _SelectionAreaUpdateState();
}

class _SelectionAreaUpdateState extends State<SelectionAreaUpdate> {
  var textKey = GlobalKey<SelectionAreaState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6, // New
      children: [
        SelectionArea(
          key: textKey, // New
          child: Text('This is some text that is can selectable'),
        ),
        TextButton(
          onPressed: () {
            textKey.currentState?.selectableRegion.clearSelection(); // New
          },
          child: Text('Clear selection area'),
        )
      ],
    );
  }
}
