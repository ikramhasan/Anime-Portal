/// Package imports
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Chart import
import 'package:syncfusion_flutter_charts/charts.dart';

class AnimeReviewBar extends StatelessWidget {
  final double rating1;
  final double rating2;
  final double rating3;
  final double rating4;
  final double rating5;
  final double rating6;
  final double rating7;
  final double rating8;
  final double rating9;
  final double rating10;

  const AnimeReviewBar({
    Key key,
    @required this.rating1,
    @required this.rating2,
    @required this.rating3,
    @required this.rating4,
    @required this.rating5,
    @required this.rating6,
    @required this.rating7,
    @required this.rating8,
    @required this.rating9,
    @required this.rating10,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _getDefaultBarChart();
  }

  /// Returns the default cartesian bar chart.
  SfCartesianChart _getDefaultBarChart() {
    return SfCartesianChart(
      palette: [Colors.blue],
      plotAreaBorderColor: Colors.white,
      borderColor: Colors.blue,
      plotAreaBorderWidth: 0,
      title: ChartTitle(text: 'Reviews'),
      legend: Legend(isVisible: false),
      primaryXAxis: CategoryAxis(
        majorGridLines: MajorGridLines(width: 0),
      ),
      primaryYAxis: NumericAxis(
          majorGridLines: MajorGridLines(width: 0),
          maximum: 100,
          numberFormat: NumberFormat.compact()),
      series: _getDefaultBarSeries(),
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }

  /// Returns the list of chart series which need to render on the barchart.
  List<BarSeries<AnimeRatingData, String>> _getDefaultBarSeries() {
    final List<AnimeRatingData> chartData = <AnimeRatingData>[
      AnimeRatingData(score: 1, rating: rating1),
      AnimeRatingData(score: 2, rating: rating2),
      AnimeRatingData(score: 3, rating: rating3),
      AnimeRatingData(score: 4, rating: rating4),
      AnimeRatingData(score: 5, rating: rating5),
      AnimeRatingData(score: 6, rating: rating6),
      AnimeRatingData(score: 7, rating: rating7),
      AnimeRatingData(score: 8, rating: rating8),
      AnimeRatingData(score: 9, rating: rating9),
      AnimeRatingData(score: 10, rating: rating10),
    ];
    return <BarSeries<AnimeRatingData, String>>[
      BarSeries<AnimeRatingData, String>(
        dataSource: chartData,
        xValueMapper: (AnimeRatingData review, _) => review.score.toString(),
        yValueMapper: (AnimeRatingData review, _) => review.rating,
      ),
    ];
  }
}

class AnimeRatingData {
  final int score;
  final double rating;
  AnimeRatingData({this.score, this.rating});
}

// class ChartSampleData {
//   /// Holds the datapoint values like x, y, etc.,
//   ChartSampleData(
//       {this.x,
//       this.y,
//       this.xValue,
//       this.yValue,
//       this.secondSeriesYValue,
//       this.thirdSeriesYValue,
//       this.pointColor,
//       this.size,
//       this.text,
//       this.open,
//       this.close,
//       this.low,
//       this.high,
//       this.volume});

//   /// Holds x value of the datapoint
//   final dynamic x;

//   /// Holds y value of the datapoint
//   final num y;

//   /// Holds x value of the datapoint
//   final dynamic xValue;

//   /// Holds y value of the datapoint
//   final num yValue;

//   /// Holds y value of the datapoint(for 2nd series)
//   final num secondSeriesYValue;

//   /// Holds y value of the datapoint(for 3nd series)
//   final num thirdSeriesYValue;

//   /// Holds point color of the datapoint
//   final Color pointColor;

//   /// Holds size of the datapoint
//   final num size;

//   /// Holds datalabel/text value mapper of the datapoint
//   final String text;

//   /// Holds open value of the datapoint
//   final num open;

//   /// Holds close value of the datapoint
//   final num close;

//   /// Holds low value of the datapoint
//   final num low;

//   /// Holds high value of the datapoint
//   final num high;

//   /// Holds open value of the datapoint
//   final num volume;
// }
