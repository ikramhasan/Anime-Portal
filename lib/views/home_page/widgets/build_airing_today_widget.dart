import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/widgets/anime_card.dart';
import 'package:anime_portal/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:anime_portal/views/view_all_page/view_all_page.dart';
import 'package:get/get.dart';
import 'package:anime_portal/controllers/anime_controller.dart';

import '../../../controllers/anime_controller.dart';

buildAiringTodayWidget({
  @required int weekday,
  @required JikanApiService api,
  @required BuildContext context,
}) {
  final animeController = Get.find<AnimeController>();
  animeController.getAiringToday(weekday);

  return Column(
    children: [
      buildTitleWidget(
        title: 'Airing Today',
        onPressed: () {
          Get.to(ViewAllPage(
            animeList: animeController.airingTodayList,
            appbarTitle: 'Airing Today',
          ));
        },
      ),
      GetBuilder<AnimeController>(
        builder: (_) {
          animeController.getAiringToday(weekday);
          return animeController.airingTodayList == null
              ? Container(
                  height: 215,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : Container(
                  height: 215,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: animeController.airingTodayList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: AnimeCard(
                            anime: animeController.airingTodayList[index]),
                      );
                    },
                  ),
                );
        },
      ),
      SizedBox(height: 8),
    ],
  );
}
