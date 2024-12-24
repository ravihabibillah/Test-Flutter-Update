import 'package:flutter/cupertino.dart';

class CupertinoAlertDialogUpdate extends StatefulWidget {
  const CupertinoAlertDialogUpdate({super.key});

  @override
  State<CupertinoAlertDialogUpdate> createState() =>
      _CupertinoAlertDialogUpdateState();
}

class _CupertinoAlertDialogUpdateState
    extends State<CupertinoAlertDialogUpdate> {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Text('Show Cupertino Alert Dialog'),
      onPressed: () {
        showCupertinoDialog(
          context: context,
          builder: (context) {
            return CupertinoAlertDialog(
              title: Text('Cupertino Alert Dialog'),
              content: Text('This is a Cupertino Alert Dialog.'),
              actions: [
                CupertinoDialogAction(
                  child: Text('Cancel'),
                  onPressed: () => Navigator.pop(context),
                ),
                CupertinoDialogAction(
                  child: Text('OK'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
