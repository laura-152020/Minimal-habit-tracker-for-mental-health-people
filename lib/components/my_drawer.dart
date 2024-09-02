import 'package:cart/theme/theme.provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer ({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.background,
        child: Center(
          child: CupertinoSwitch(
            value: Provider.of<ThemeProvider>(context).isDarkMode,
            onChanged: (value) {
              // Llama a toggleTheme cuando se cambia el switch
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
          ),
        ),
      );
  }
}