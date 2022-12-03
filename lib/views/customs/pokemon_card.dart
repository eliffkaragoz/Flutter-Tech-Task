import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../core/components/button/button_libary.dart';
import '../../core/components/text/custom_auto_size_text.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    super.key,
    required this.data,
  });

  final dynamic data; //  snapshot.data!.results[index]
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: CustomText(
        text: data.name.toString(),
      ),
      trailing: ValueListenableBuilder(
        valueListenable: Hive.box('favorite').listenable(),
        builder: (context, box, _) {
          return CustomIconButton(
            onPressed: () {
              // box.clear();
              if (box.containsKey(data.name)) {
                box.delete(data.name);
              } else {
                box.put(
                  data.name,
                  data,
                );
              }
            },
            icon: box.containsKey(data.name)
                ? Icons.favorite
                : Icons.favorite_border,
          );
        },
      ),
    );
  }
}
