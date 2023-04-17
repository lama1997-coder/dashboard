part of 'widget_import.dart';

class HeigthPerEmplyeeWidget extends StatelessWidget {
  final List<HeightPerfEmpModel> heightper;
  const HeigthPerEmplyeeWidget({super.key, required this.heightper});

  @override
  Widget build(BuildContext context) {
    return CardWidget(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultText(title: "Highest Performing \nEmployees"),
        ListView.builder(
          shrinkWrap: true,
          itemCount: heightper.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: MyColors.borderColor.withOpacity(0.5)))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    
                    children: [
                      Image.asset(
                        heightper[index].image,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: FittedBox(
                              child: DefaultText(
                        title: heightper[index].name,
                        size: 12,
                      )))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DefaultText(title: heightper[index].branch)
                ],
              ),
            );
          },
        )
      ],
    ));
  }
}
