import 'package:anime_portal/services/api_service.dart';
import 'package:anime_portal/views/view_all_page/view_all_page.dart';
import 'package:anime_portal/widgets/anime_card.dart';
import 'package:anime_portal/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:anime_portal/controllers/anime_controller.dart';

buildTrendingListViewWidget({
  @required JikanApiService api,
  @required BuildContext context,
}) {
  final animeController = Get.put(AnimeController());

  return Column(
    children: [
      buildTitleWidget(
        title: 'Trending Now',
        onPressed: () {
          Get.to(
            ViewAllPage(
              animeList: animeController.trendingList,
              appbarTitle: 'Trending Now',
            ),
          );
        },
      ),
      SizedBox(height: 8),
      GetBuilder<AnimeController>(
        init: AnimeController(),
        builder: (controller) {
          controller.getTrending();
          return controller.trendingList == null
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
                    itemCount: controller.trendingList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: AnimeCard(anime: controller.trendingList[index]),
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
