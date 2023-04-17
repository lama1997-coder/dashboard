part of 'widget_import.dart';

class BestSeller extends StatelessWidget {
  final List<BestSellerModel> bestSeller;
  const BestSeller({super.key, required this.bestSeller});

  @override
  Widget build(BuildContext context) {
    return CardWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultText(title: "best selling products"),
        ListView.builder(
          itemCount: bestSeller.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return BestSellerWidget(bestSeller: bestSeller[index]);
          },
        ),
      ],
    ));
  }
}
