import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CupertinoDatePickerUpdate extends StatefulWidget {
  const CupertinoDatePickerUpdate({
    super.key,
  });

  @override
  State<CupertinoDatePickerUpdate> createState() =>
      _CupertinoDatePickerUpdateState();
}

class _CupertinoDatePickerUpdateState extends State<CupertinoDatePickerUpdate> {
  DateTime? selectedDate;

  @override
  void initState() {
    selectedDate = DateTime.now();
    super.initState();
  }

  String parseDate(DateTime? date) {
    if (date == null) return '';
    return DateFormat('HH:mm on dd MMMM yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 6,
      children: [
        Text('Selected Date:'),
        CupertinoButton(
          onPressed: () => _buildModal(context),
          child: Text(parseDate(selectedDate)),
        )
      ],
    );
  }

  _buildModal(BuildContext context) async {
    return showCupertinoModalPopup(
      context: context,
      builder: (context) => Container(
        color: Colors.white,
        height: 200,
        child: CupertinoDatePicker(
          initialDateTime: selectedDate,
          onDateTimeChanged: _updateValue,
        ),
      ),
    );
  }

  void _updateValue(value) {
    setState(() {
      selectedDate = value;
    });
  }
}
