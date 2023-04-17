part of 'home_page_import.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomePageData homePageData;
  @override
  void initState() {
    homePageData = new HomePageData();
    super.initState();
    context.read<OrderSummaryBloc>().add(OnReloadChanged());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      body: BlocBuilder<OpenMenueCubit, bool>(builder: (context, open) {
        return BlocBuilder<SideMenuCubit, int>(builder: (context, data) {
          homePageData.selectedPage = data;
          return Row(
            children: [
              open
                  ? Expanded(
                      flex: 1,
                      child: Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        visible: open,
                        child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                          opacity: open ? 1 : 0,
                          child: Menue(
                            homePageData: homePageData,
                          ),
                        ),
                      ),
                    )
                  : Container(),
              Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(color: MyColors.primary2),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () => homePageData.closeMene(context),
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: MyColors.textColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.menu,
                                  color: MyColors.primary2,
                                ),
                              ),
                            ),
                            Expanded(
                              child: DefaultText(
                                align: TextAlign.center,
                                title:
                                    "rate us in marouf to take a free month ",
                              ),
                            ),
                            Icon(
                              Icons.close,
                              color: MyColors.textColor,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: homePageData.side_navigation[data].page ??
                            Container(
                              alignment: Alignment.center,
                              child: DefaultText(
                                align: TextAlign.center,
                                title: homePageData.side_navigation[data].name,
                              ),
                            ),
                      ),
                    ],
                  )),
            ],
          );
        });
      }),
    );
  }
}
