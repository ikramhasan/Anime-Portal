import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

buildAnimePageDescription(anime, controller) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ExpandableNotifier(
          controller: controller,
          initialExpanded: false,
          child: ScrollOnExpand(
            child: ExpandablePanel(
              theme: ExpandableThemeData(iconColor: Colors.blue),
              header: Expanded(
                child: Text(
                  anime.synopsis ?? '',
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              expanded: Text(
                anime.synopsis ?? '',
                softWrap: true,
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ),
      );
    }