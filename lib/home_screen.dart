import 'package:flutter/material.dart';
import 'package:test_flutter_update_3_27/3.27.1/cupertino_updates/cupertino_update_screen.dart';
import 'package:test_flutter_update_3_27/3.27.1/material_updates/material_update_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void navigateTo(BuildContext context, Widget newPage) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => newPage),
    );
  }

  Widget _customButton(BuildContext context, String title, Widget newPage) {
    return ElevatedButton(
      onPressed: () => navigateTo(
        context,
        newPage,
      ),
      child: Text(title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Updates 3.27.1'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10,
          children: [
            _customButton(
              context,
              'Cupertino Updates',
              const CupertinoUpdateScreen(),
            ),
            _customButton(
              context,
              'Material Updates',
              const MaterialUpdateScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
