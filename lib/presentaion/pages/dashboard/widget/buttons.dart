part of 'widget_import.dart';

class Buttons extends StatelessWidget {
  final String icon;
  const Buttons({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(color: MyColors.primary2),
          borderRadius: BorderRadius.circular(10)),
      child: Image.asset(icon),
    );
  }
}
