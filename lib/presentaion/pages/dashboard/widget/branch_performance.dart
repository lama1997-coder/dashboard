part of 'widget_import.dart';


class BranchPerformance extends StatelessWidget {
  final List<SellerSummary> branchPerformance;
  const BranchPerformance({super.key, required this.branchPerformance});

  @override
  Widget build(BuildContext context) {
    return CardWidget(child: Row(
        children: [
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
              itemCount: branchPerformance.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    branchPerformance[index].percentage != null
                        ? Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(branchPerformance[index].color ?? 0)),
                          )
                        : Container(),
                    SizedBox(
                      width: branchPerformance[index].percentage != null ? 20 : 0,
                    ),
                    DefaultText(title: branchPerformance[index].title ?? "")
                  ],
                );
              },
            ),
          ),
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
      ),);
  }
}