part of 'dashboard_import.dart';

class DashboardData {
  chandDarkMode(BuildContext context) =>
      context.read<DarkModeCubit>().darkMode();

  Seller seller = Seller();

  void getSellerSummary(BuildContext context) {
    context.read<OrderSummaryBloc>().add(OnReloadChanged());
  }


List<SellerSummary>branch_performance =[

SellerSummary(title: "Khobar Branch",percentage: "15",color:0xff3AC2CB),
SellerSummary(title: "Dammam Branch",percentage: "15",color:0xffF12E67),
SellerSummary(title: "Riyadh Branch",percentage: "15",color:0xffFE9518)


];

List<SellerSummary>vat =[

SellerSummary(title: "standad Vat Rate \n1000 SR",percentage: "15",color:0xff3AC2CB),
SellerSummary(title: "not Subject to Vat \n1000 SR",percentage: "15",color:0xffF12E67),
SellerSummary(title: "Exempt From Vat\n1000 SR",percentage: "15",color:0xff34B53A),
SellerSummary(title: "Zero vAT rated\n1000 SR",percentage: "15",color:0xffFE9518)


];
 
}
