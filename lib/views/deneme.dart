import 'package:flutter/material.dart';
import 'package:pokemon/core/components/text/custom_auto_size_text.dart';

import '../core/data/enum/shared_keys.dart';
import '../core/init/cache/shared_manager.dart';

class DenemeView extends StatelessWidget {
  const DenemeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 200,
        child: CustomText(
          text: SharedManager.getString(SharedKeys.favorite).toString(),
        ),
      ),
    );
  }
}
