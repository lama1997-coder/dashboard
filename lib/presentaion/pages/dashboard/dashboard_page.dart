part of 'dashboard_import.dart';

class DashbordPage extends StatefulWidget {
  const DashbordPage({super.key});

  @override
  State<DashbordPage> createState() => _DashbordPageState();
}

class _DashbordPageState extends State<DashbordPage> {
  late DashboardData dashboardData;

  @override
  void initState() {
    dashboardData = DashboardData();
    dashboardData.getSellerSummary(context);
    super.initState();
  }

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
                  children: [
                    AppBarWidget(
                      dashboardData: dashboardData,
                    ),
                    state is OrderSummaryHasData
                        ? Column(
                            children: [
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
                                    statictics: state.result.statictics ?? [],
                                  )),
                                  const SizedBox(
                                    width: 80,
                                  ),
                                  Expanded(
                                      child: BranchPerformance(
                                    branchPerformance:
                                        dashboardData.branch_performance,
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
                                        branchPerformance: dashboardData.vat),
                                  ),
                                  const SizedBox(
                                    width: 80,
                                  ),
                                  Expanded(
                                    child: BranchPerformance(
                                        branchPerformance: dashboardData.vat),
                                  )
                                ],
                              )
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
