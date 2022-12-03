import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'text/custom_auto_size_text.dart';
import 'package:provider/provider.dart';

import '../provider/bottom_nav_bar_state.dart';

class CustomAppBar extends PreferredSize {
  const CustomAppBar({
    super.key,
    required super.child,
    required super.preferredSize,
  });

  static PreferredSize customAppBar({
    required BuildContext context,
    bool? isBackButton,
    required String title,
    Widget? action,
  }) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(55),
      child: AppBar(
        toolbarHeight: context.dynamicHeight(0.1),
        elevation: 1,
        automaticallyImplyLeading: isBackButton ?? false,
        title: context.watch<BottomNavigationBarState>().currentPage == 0
            ? Padding(
                padding: context.onlyLeftPaddingNormal,
                child: CustomText(
                  text: title,
                  fontSize: 20,
                ),
              )
            : Padding(
                padding: context.onlyLeftPaddingNormal,
                child: CustomText(
                  text: title,
                  fontSize: 20,
                ),
              ),
        actions: [
          Padding(padding: context.onlyRightPaddingMedium, child: action),
        ],
      ),
    );
  }
}
