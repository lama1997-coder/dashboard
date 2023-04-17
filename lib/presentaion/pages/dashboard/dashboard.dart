part of 'dashboard_import.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late DashboardData dashboardData;

  @override
  void initState() {
    dashboardData = DashboardData();
    dashboardData.getSellerSummary(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubPageCubit, int>(
      builder: (context, state) {
        return dashboardData.subPage(dashboardData)[state];
      },
    );
  }
}
