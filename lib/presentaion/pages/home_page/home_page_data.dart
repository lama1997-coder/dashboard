part of 'home_page_import.dart';

class HomePageData {
  int selectedPage = 0;
  void closeMene(BuildContext context) =>
      context.read<OpenMenueCubit>().closeMenue();
  void select(BuildContext context, int index) =>
      context.read<SideMenuCubit>().select(index);





  List<SideMenueModel> side_navigation = [
    SideMenueModel(name: "Dashboard",page: Dashboard()),
    
    SideMenueModel(name: "Branch Management"),
    SideMenueModel(name: "Roles Management", icon: Icons.expand_more),
    SideMenueModel(name: "Costumer Management", icon: Icons.expand_more),
    SideMenueModel(name: "Supplier Management"),
    SideMenueModel(name: "Products Management", icon: Icons.expand_more),
    SideMenueModel(
        name: "Orders Management",
        icon: Icons.expand_more,
        markers: true,
        number: "2"),
    SideMenueModel(name: "Marketing Management", icon: Icons.expand_more),
    SideMenueModel(name: "Store Theme", icon: Icons.expand_more, markers: true),
    SideMenueModel(name: "Accounting & Reports", icon: Icons.expand_more),
    SideMenueModel(name: "System Setting", icon: Icons.expand_more),
    SideMenueModel(name: "App Market", icon: Icons.expand_more, markers: true),
    SideMenueModel(
      name: "Vedio Center",
    ),
    SideMenueModel(
      name: "Hairing Team",
    ),
    SideMenueModel(
      name: "Hairing Team",
    ),
    SideMenueModel(
      name: "Hairing Team",
    ),
    SideMenueModel(name: "log out", icon: Icons.expand_more),
  ];
}
