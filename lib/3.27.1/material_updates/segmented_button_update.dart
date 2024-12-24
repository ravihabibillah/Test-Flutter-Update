import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SegmentedButtonUpdate extends StatefulWidget {
  const SegmentedButtonUpdate({super.key});

  @override
  State<SegmentedButtonUpdate> createState() => _SegmentedButtonUpdateState();
}

class _SegmentedButtonUpdateState extends State<SegmentedButtonUpdate> {
  var selectedSegment = {''};

  _updateValue(Set<String> value) {
    setState(() {
      selectedSegment = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SegmentedButton(
      segments: [
        ButtonSegment(
          value: 'left',
          icon: Icon(Icons.align_horizontal_left_rounded),
        ),
        ButtonSegment(
          value: 'center',
          icon: Icon(Icons.align_horizontal_center_rounded),
        ),
        ButtonSegment(
          value: 'right',
          icon: Icon(Icons.align_horizontal_right_rounded),
        ),
      ],
      selected: selectedSegment,
      direction: Axis.vertical, // New
      style: SegmentedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      onSelectionChanged: (value) => _updateValue(value),
    );
  }
}
