part of 'widget_import.dart';

class BestBurWidget extends StatelessWidget {
  final List<MostBurModel> mostBur;
  const BestBurWidget({super.key, required this.mostBur});

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultText(title: "Most Purchased \nCustomers"),
          ListView.builder(
            shrinkWrap: true,
            itemCount: mostBur.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: MyColors.borderColor.withOpacity(0.5)))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    DefaultText(
                      title: mostBur[index].nameOrder,
                      size: 12,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DefaultText(
                      title: mostBur[index].price,
                      color: MyColors.borderColor,
                      size: 10,
                    )
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
