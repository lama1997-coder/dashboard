part of 'widget_import.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: DefaultText(title: "Welcome To Kwaidi Sellers Dashboard")),
        Image.asset(Res.profile),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Container(
              width: 100,
              child: DropDown(
                items: ["profile settings", "log out"],
                title: "Hi Dema ",
              ),
            ),
            DefaultText(title: "Good Morning!")
          ],
        ),
      ],
    );
  }
}
