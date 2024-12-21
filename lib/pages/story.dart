import 'package:flutter/material.dart';
import '../globals/app_state.dart';
import 'package:provider/provider.dart';

class StoryPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);
    final textStyle = theme.textTheme.bodyMedium!.copyWith(
      color: theme.colorScheme.onTertiaryFixed,
    );
    
    var appState = context.watch<MyAppState>();
    var list = appState.favorites;

    return Scaffold(
      appBar: AppBar(title: const Text('Empty List Test')),
      body: list.isNotEmpty
        ? ListView.separated(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(
                  style:textStyle,
                  'Item ${index + 1} : ${list[index]}'
                  ),
              );
            },
            separatorBuilder: (context, index) => const Divider(),
          )
        : const Center(child: Text('No favorites yet.')),
    );
  }
}