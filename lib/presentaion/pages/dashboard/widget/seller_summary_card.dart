part of 'widget_import.dart';

class SellerSummaryCard extends StatelessWidget {
  final List<SellerSummary> sellerSummary;
  const SellerSummaryCard({super.key, required this.sellerSummary});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridView.builder(
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 67,
              crossAxisSpacing: 100,
              mainAxisExtent: 280),
          shrinkWrap: true,
          itemCount: sellerSummary.length,
          itemBuilder: (context, index) {
            return CardWidget(
              child: Column(
                children: [
                  DefaultText(
                    title: sellerSummary[index].title ?? "",
                    size: 20,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 20,
                          color: Color(sellerSummary[index].color ?? 0)),
                      //color: MyColors.primary2,
                      shape: BoxShape.circle,
                    ),
                    child:
                        DefaultText(title: sellerSummary[index].percentage ?? ""),
                  )
                ],
              ),
            );
          }),
    );
  }
}
