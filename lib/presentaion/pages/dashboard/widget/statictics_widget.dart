part of 'widget_import.dart';

class StaticticsWidget extends StatelessWidget {
  final DashboardData dashboardData;
  final List<Statictics> statictics;
  const StaticticsWidget(
      {super.key, required this.statictics, required this.dashboardData});

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultText(title: "statistics"),
                SizedBox(
                  height: 20,
                ),
                ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
                  itemCount: statictics.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        statictics[index].percentage != null
                            ? Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(statictics[index].color ?? 0)),
                              )
                            : Container(),
                        SizedBox(
                          width: statictics[index].percentage != null ? 20 : 0,
                        ),
                        DefaultText(title: statictics[index].title ?? "")
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width / 5.5,
              height: 300,
              child: LineChart(LineChartData(
                gridData: FlGridData(
                  getDrawingHorizontalLine: (value) {
                    return FlLine(
                      color: Colors.black12,
                      strokeWidth: 1,
                    );
                  },

                  show: true,
                  drawVerticalLine: false,
                  drawHorizontalLine: true, // this one
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  // The red line
                  LineChartBarData(
                    spots: dashboardData.dummyData1,
                    isCurved: true,
                    barWidth: 1,
                    color: MyColors.primary2,
                    belowBarData: BarAreaData(
                      show: true,
                      color: MyColors.primary2.withOpacity(0.2),
                    ),
                  ),
                  LineChartBarData(
                    spots: dashboardData.dummyData2,
                    isCurved: true,
                    barWidth: 1,
                    color: MyColors.dengerColor,
                    belowBarData: BarAreaData(
                      show: true,
                      color: MyColors.dengerColor.withOpacity(0.2),
                    ),
                  ),
                  // The blue line
                  LineChartBarData(
                    spots: dashboardData.dummyData3,
                    isCurved: false,
                    barWidth: 1,
                    color: Colors.amber[800],
                    belowBarData: BarAreaData(
                      show: true,
                      color: Colors.amber.withOpacity(0.2),
                    ),
                  )
                ],
                titlesData: FlTitlesData(
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: dashboardData.bottomTitles,
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: dashboardData.leftTitel,
                  ),
                ),
              )))

          // Expanded(
          //   child: LineChart(LineChartData(
          //     borderData: FlBorderData(show: false),
          //     lineBarsData: [
          //       // The red line
          //       LineChartBarData(
          //         spots: dashboardData.dummyData1,
          //         isCurved: true,
          //         barWidth: 3,
          //         color: Colors.indigo,
          //       ),
          //       // The orange line
          //       LineChartBarData(
          //         spots: dashboardData.dummyData2,
          //         isCurved: true,
          //         barWidth: 3,
          //         color: Colors.red,
          //       ),
          //       // The blue line
          //       LineChartBarData(
          //         spots: dashboardData.dummyData3,
          //         isCurved: false,
          //         barWidth: 3,
          //         color: Colors.blue,
          //       )
          //     ],
          //   )),
          // )
          //  SfCartesianChart(
          //     primaryXAxis: CategoryAxis(),
          //     // Chart title
          //     title: ChartTitle(text: 'Half yearly sales analysis'),
          //     // Enable legend
          //     legend: Legend(isVisible: true),
          //     // Enable tooltip
          //     tooltipBehavior: TooltipBehavior(enable: true),
          //     series: <CartesianSeries>[
          //       LineSeries<Statictice, String>(
          //           dataSource: statictics,
          //           xValueMapper: (Statictics sales, _) => sales.statictice,
          //           yValueMapper: (Statictics sales, _) => sales.sales,
          //           name: 'Sales',
          //           // Enable data label
          //           dataLabelSettings: DataLabelSettings(isVisible: true))
          //     ]),
        ],
      ),
    );
  }
}
