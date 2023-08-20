import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../utils/text_styles.dart';

@RoutePage()
class MapsPage extends StatelessWidget {
  const MapsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Story Location',
          style: TextStyles.body.copyWith(fontSize: 20),
        ),
        centerTitle: true,
      ),
    );
  }
}
