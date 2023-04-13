part of 'widget_import.dart';

class Menue extends StatelessWidget {
  final HomePageData homePageData;
  const Menue({super.key, required this.homePageData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),

      width: MediaQuery.of(context).size.width * 0.12,
      // constraints: BoxConstraints(minWidth: 700),
      decoration: BoxDecoration(color: MyColors.primary),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(Res.logo),
          const SizedBox(
            height: 50,
          ),
          ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
              itemCount: homePageData.side_navigation.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => homePageData.select(context, index),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            DefaultText(
                                maxLines: 1,
                                color: homePageData.selectedPage == index
                                    ? MyColors.primary2
                                    : MyColors.textColor,
                                title:
                                    homePageData.side_navigation[index].name),
                            SizedBox(
                              width: 10,
                            ),
                            homePageData.side_navigation[index].markers ?? false
                                ? Container(
                                    width: 24,
                                    height: 24,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: MyColors.dengerColor,
                                    ),
                                    child: DefaultText(
                                        title: homePageData
                                                .side_navigation[index]
                                                .number ??
                                            ""),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                      Icon(
                        homePageData.side_navigation[index].icon,
                        color: MyColors.textColor,
                      )
                    ],
                  ),
                );
              }),
          Container()
        ],
      ),
    );
  }
}
