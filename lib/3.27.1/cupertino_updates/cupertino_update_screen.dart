import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter_update_3_27/3.27.1/cupertino_updates/cupertino_alert_dialog_update.dart';
import 'package:test_flutter_update_3_27/3.27.1/cupertino_updates/cupertino_button_tinted_update.dart';
import 'package:test_flutter_update_3_27/3.27.1/cupertino_updates/cupertino_checkbox_update.dart';
import 'package:test_flutter_update_3_27/3.27.1/cupertino_updates/cupertino_date_picker_update.dart';
import 'package:test_flutter_update_3_27/3.27.1/cupertino_updates/cupertino_picker_update.dart';
import 'package:test_flutter_update_3_27/3.27.1/cupertino_updates/cupertino_radio_update.dart';
import 'package:test_flutter_update_3_27/3.27.1/cupertino_updates/cupertino_sliding_segmented_controler_update.dart';
import 'package:test_flutter_update_3_27/3.27.1/cupertino_updates/cupertino_switch_update.dart';

class CupertinoUpdateScreen extends StatelessWidget {
  const CupertinoUpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Cupertino Updates in 3.27.1'),
          leading: CupertinoButton(
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              CupertinoCheckboxUpdate(),
              CupertinoRadioUpdate(),
              CupertinoSwitchUpdate(),
              CupertinoSlidingSegmentedControlerUpdate(),
              CupertinoButtonTintedUpdate(), // New
              CupertinoPickerUpdate(),
              CupertinoDatePickerUpdate(),
              CupertinoAlertDialogUpdate(),
            ],
          ),
        ),
      ),
    );
  }
}
