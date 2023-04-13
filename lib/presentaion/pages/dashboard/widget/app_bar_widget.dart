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
            DropDown(
              width: 100,
              border: false,
              items: ["profile settings", "log out"],
              title: "Hi Dema ",
            ),
            DefaultText(title: "Good Morning!")
          ],
        ),
        DropDown(
          items: ["EN", "AR"],
          title: "EN",
        ),
        Buttons(
          icon: Res.messages,
        )
      ],
    );
  }
}
