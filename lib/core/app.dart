import 'package:flutter/material.dart';
import 'package:pokemon/core/provider/multi_provider_init.dart';
import 'package:provider/provider.dart';

import 'init/routes/on_generate_routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: MultiProviderInit().providers,
      child: MaterialApp(
        onGenerateRoute: NavigationRoute.instance.generateRoute,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        //theme: ,
      ),
    );
  }
}
