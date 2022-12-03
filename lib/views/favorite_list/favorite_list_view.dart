import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pokemon/views/customs/pokemon_card.dart';
import 'package:kartal/kartal.dart';

class FavoriteListView extends StatefulWidget {
  const FavoriteListView({super.key});

  @override
  State<FavoriteListView> createState() => _FavoriteListViewState();
}

class _FavoriteListViewState extends State<FavoriteListView> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box('favorite').listenable(),
      builder: (context, box, child) {
        List datas = List.from(box.values);
        return SizedBox(
            height: context.dynamicHeight(1),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: context.dynamicHeight(0.02),
                crossAxisSpacing: context.dynamicWidth(0.05),
              ),
              itemCount: datas.length,
              itemBuilder: (context, index) {
                return BuildCard(
                  index: '#00$index',
                  data: datas[index],
                );
              },
            ));
      },
    );
  }
}
