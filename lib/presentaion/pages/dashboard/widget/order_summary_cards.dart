part of 'widget_import.dart';

class OrderSummaryCards extends StatelessWidget {
  final List<OrdersSummary> ordersSummary;
  const OrderSummaryCards({super.key, required this.ordersSummary});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 0,
          crossAxisSpacing: 65,
          mainAxisExtent: 280,
        ),
        shrinkWrap: true,
        itemCount: ordersSummary.length,
        itemBuilder: (context, index) {
          return CardWidget(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(ordersSummary[index].color ?? 0),
                      ),
                      child: SvgPicture.asset(ordersSummary[index].image ?? ""),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    DefaultText(
                      title: ordersSummary[index].title ?? "",
                      color: MyColors.borderColor,
                      size: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: FittedBox(
                        child: DefaultText(
                          title: ordersSummary[index].number ?? "",
                          fontWeight: FontWeight.w500,
                          size: 30,
                        ),
                      ),
                    ),
                    Image.asset(ordersSummary[index].status ?? true
                        ? Res.growthyes
                        : Res.growthno)
                  ],
                ),
                Row(
                  children: [
                    Image.asset(ordersSummary[index].status ?? true
                        ? Res.trendup
                        : Res.trenddown),
                    const SizedBox(
                      width: 10,
                    ),
                    DefaultText(title: ordersSummary[index].percentage ?? "")
                  ],
                )
              ],
            ),
          );
        });
  }
}
