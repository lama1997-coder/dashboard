part of 'dashboard_import.dart';

class DashbordPage extends StatefulWidget {
  final DashboardData? dashboardData;
  const DashbordPage({super.key, this.dashboardData});

  @override
  State<DashbordPage> createState() => _DashbordPageState();
}

class _DashbordPageState extends State<DashbordPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: BlocBuilder<OrderSummaryBloc, OrderSummaryState>(
        builder: (context, state) {
          return state is OrderSummaryLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView(
                  // padding: EdgeInsets.symmetric(horizontal: 10),
                  children: [
                    AppBarWidget(
                      dashboardData: widget.dashboardData!,
                    ),
                    state is OrderSummaryHasData
                        ? Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              OrderSummaryCards(
                                ordersSummary: state.result.ordersSummary ?? [],
                              ),
                              const SizedBox(
                                height: 80,
                              ),
                              SellerSummaryCard(
                                sellerSummary: state.result.sellerSummary ?? [],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: StaticticsWidget(
                                    dashboardData: widget.dashboardData!,
                                    statictics: state.result.statictics ?? [],
                                  )),
                                  const SizedBox(
                                    width: 80,
                                  ),
                                  Expanded(
                                      child: BranchPerformance(
                                    dashboardData: widget.dashboardData!,
                                    branchPerformance: widget
                                        .dashboardData!.branch_performance,
                                  ))
                                ],
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: BranchPerformance(
                                        dashboardData: widget.dashboardData!,
                                        branchPerformance:
                                            widget.dashboardData!.vat),
                                  ),
                                  const SizedBox(
                                    width: 80,
                                  ),
                                  Expanded(
                                    child: BranchPerformance(
                                        dashboardData: widget.dashboardData!,
                                        branchPerformance:
                                            widget.dashboardData!.vat),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 80,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: BestSeller(
                                    bestSeller:
                                        widget.dashboardData!.bestSeller,
                                  )),
                                  const SizedBox(
                                    width: 80,
                                  ),
                                  Expanded(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: BestBurWidget(
                                                mostBur: widget
                                                    .dashboardData!.mostBur)),
                                        const SizedBox(
                                          width: 40,
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: HeigthPerEmplyeeWidget(
                                              heightper: widget
                                                  .dashboardData!.heightperEmp,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 80,
                              ),
                              SocialMediaWidget()
                            ],
                          )
                        : Container(),
                  ],
                );
        },
      ),
    );
  }
}
