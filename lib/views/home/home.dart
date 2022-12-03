import 'package:flutter/material.dart';
import 'package:pokemon/core/components/text/text_libary.dart';
import 'package:pokemon/views/customs/value_listenable_builder.dart';
import 'package:provider/provider.dart';

import '../../core/components/custom_bottom_navigation_bar.dart';
import '../../core/provider/bottom_nav_bar_state.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kartal/kartal.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: context.watch<BottomNavigationBarState>().currentPage == 0
            ? const CustomText(text: "Pokemon List")
            : const CustomText(text: 'Favori List'),
        actions: [
          ValueListenableBuilder(
            valueListenable: Hive.box('favorite').listenable(),
            builder: (context, value, _) {
              return Chip(
                label: Wrap(
                  spacing: context.dynamicWidth(0.04),
                  children: [
                    const CustomText(text: 'Favori Sayısı:'),
                    CustomText(
                      text: Hive.box('favorite').values.length.toString(),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: context.watch<BottomNavigationBarState>().pageOptions.elementAt(
              context.watch<BottomNavigationBarState>().currentPage,
            ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
