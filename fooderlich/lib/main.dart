import 'package:flutter/material.dart';
import 'package:fooderlich/screens/explore_screen.dart';
import 'package:provider/provider.dart';

import 'fooderlich_theme.dart';
import 'screens/home.dart';
import 'models/grocery_manager.dart';
import 'models/tab_manager.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.light();
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      home: MultiProvider(
        providers: [
          // 2
          ChangeNotifierProvider(create: (context) => TabManager()),
          ChangeNotifierProvider(create: (context) => GroceryManager()),
        ],
        child: const Home(),
      ),
    );
  }
}
