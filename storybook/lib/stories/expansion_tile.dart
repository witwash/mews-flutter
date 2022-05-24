import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:optimus/optimus.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final Story expansionTileStory = Story(
  name: 'Expansion list tile',
  builder: (context) {
    final k = context.knobs;

    return SingleChildScrollView(
      child: Column(
        children: Iterable<int>.generate(10)
            .map(
              (i) => OptimusExpansionTile(
                title: Text(k.text(label: 'Title', initial: 'Title')),
                subtitle: Text(k.text(label: 'Subtitle', initial: 'Subtitle')),
                children: const [
                  OptimusListTile(title: Text('Child number 1')),
                  OptimusListTile(title: Text('Child number 2'))
                ],
              ),
            )
            .toList(),
      ),
    );
  },
);
