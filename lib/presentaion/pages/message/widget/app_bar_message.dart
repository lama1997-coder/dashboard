part of 'widget_import.dart';

class AppBarMessage extends StatelessWidget {
    final DashboardData dashboardData;

  const AppBarMessage({super.key, required this.dashboardData});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: DefaultText(title: "Welcome To Kwaidi Sellers Dashboard")),
        InkWell(onTap: () {
          
        },
          child: Image.asset(Res.profile)),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            const DropDown(
              width: 100,
              border: false,
              changing: false,
              items: ["profile settings", "log out"],
              title: "Hi Dema ",
            ),
            DefaultText(title: "Good Morning!")
          ],
        ),
        const DropDown(
          items: ["EN", "AR"],
          title: "EN",
        ),
        const SizedBox(
          width: 10,
        ),
        Buttons(
          icon: Res.messages,
          onTap: () => context.read<SubPageCubit>().select(1),
        ),
        const SizedBox(
          width: 10,
        ),
        const Buttons(
          icon: Res.noti,
        ),
        const SizedBox(
          width: 10,
        ),
        BlocBuilder<DarkModeCubit, bool>(
          builder: (context, state) {
            return Buttons(
              icon: state ? Res.sun : Res.dark,
              onTap:() {
                 dashboardData.chandDarkMode(context);
              },
            );
          },
        ),
      ],
    );
  }
}