import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/bottom_nav_bar_state.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});
  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.filter_list),
          label: 'Pokemon List',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorite',
        ),
      ],
      currentIndex: context.watch<BottomNavigationBarState>().currentPage,
      onTap: context.read<BottomNavigationBarState>().changePage,
    );
  }
}
