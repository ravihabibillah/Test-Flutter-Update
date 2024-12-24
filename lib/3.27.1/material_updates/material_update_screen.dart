import 'package:flutter/material.dart';
import 'package:test_flutter_update_3_27/3.27.1/material_updates/carousel_view_update.dart';
import 'package:test_flutter_update_3_27/3.27.1/material_updates/segmented_button_update.dart';
import 'package:test_flutter_update_3_27/3.27.1/material_updates/selection_area_update.dart';

class MaterialUpdateScreen extends StatelessWidget {
  const MaterialUpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Updates in 3.27.1'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: [
            CarouselViewUpdate(),
            SegmentedButtonUpdate(),
            SelectionAreaUpdate(),
          ],
        ),
      ),
    );
  }
}
