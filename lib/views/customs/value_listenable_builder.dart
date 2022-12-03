// import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';

// class CustomValueListenableBuilder extends StatelessWidget {
//   const CustomValueListenableBuilder({
//     super.key,
//     required this.widget,
//   });

//   final Widget widget;
//   @override
//   Widget build(BuildContext context) {
//     return ValueListenableBuilder(
//       valueListenable: Hive.box('favorite').listenable(),
//       builder: (context, value, _) {
//         return widget;
//       },
//     );
//   }
// }
