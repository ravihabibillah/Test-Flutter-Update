import 'package:flutter/cupertino.dart';

class CupertinoButtonTintedUpdate extends StatelessWidget {
  const CupertinoButtonTintedUpdate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton.tinted(
      child: Text('Cupertino Button Tinted'),
      onPressed: () {},
      onLongPress: () {}, // New
    );
  }
}
