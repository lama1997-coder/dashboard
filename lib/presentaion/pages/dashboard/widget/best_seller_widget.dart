part of 'widget_import.dart';

class BestSellerWidget extends StatelessWidget {
  final BestSellerModel bestSeller;
  const BestSellerWidget({super.key, required this.bestSeller});

  @override
  Widget build(BuildContext context) {
    double _userRating = 5.0;
    int _ratingBarMode = 1;
    double _initialRating = 2.0;
    bool _isRTLMode = false;
    IconData? _selectedIcon;

    bool _isVertical = false;
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom:
                  BorderSide(color: MyColors.borderColor.withOpacity(0.5)))),
      child: Row(
        children: [
          Expanded(child: Image.asset(bestSeller.image)),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultText(
                  title: bestSeller.name,
                  size: 12,
                ),
                DefaultText(
                  title: bestSeller.price,
                  size: 12,
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      Res.chart,
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: DefaultText(
                        title: bestSeller.totlaSale,
                        size: 12,
                      ),
                    ),
                  ],
                ),
                DefaultText(
                  title: "total sales",
                  size: 10,
                  color: MyColors.borderColor,
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      Res.trendup,
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    DefaultText(
                      title: bestSeller.salese,
                      size: 12,
                    ),
                  ],
                ),
                DefaultText(
                  title: bestSeller.percentage,
                  size: 10,
                  color: MyColors.borderColor,
                )
              ],
            ),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RatingBarIndicator(
                rating: _userRating,
                itemBuilder: (context, index) => Icon(
                  _selectedIcon ?? Icons.star,
                  color: Colors.amber,
                ),
                itemCount: 5,
                itemSize: 15.0,
                unratedColor: Colors.amber.withAlpha(50),
                direction: _isVertical ? Axis.vertical : Axis.horizontal,
              ),
              DefaultText(
                title: bestSeller.reviewNum,
                size: 10,
                color: MyColors.borderColor,
              )
            ],
          ))
        ],
      ),
    );
  }
}
