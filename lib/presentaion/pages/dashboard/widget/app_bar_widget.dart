part of 'widget_import.dart';

class AppBarWidget extends StatefulWidget {
  final DashboardData dashboardData;
  const AppBarWidget({super.key, required this.dashboardData});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child:
                    DefaultText(title: "Welcome To Kwaidi Sellers Dashboard")),
            InkWell(onTap: () {}, child: Image.asset(Res.profile)),
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
                  onTap: () {
                    widget.dashboardData.chandDarkMode(context);
                  },
                );
              },
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: MyColors.borderColor.withOpacity(0.3), width: 1)),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: MyColors.borderColor,
                    ),
                    // hintText: hint ?? "",
                    hintStyle: TextStyle(color: MyColors.borderColor),
                    enabledBorder: InputBorder.none),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              alignment: Alignment.center,
              width: 70,
              //height: 50,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: MyColors.primary2,
                  borderRadius: BorderRadius.circular(10)),
              child: DefaultText(title: "Search"),
            ),
            SizedBox(
              height: 10,
            )
          ],
        )
      ],
    );
  }
}
