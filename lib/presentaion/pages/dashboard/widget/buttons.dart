part of 'widget_import.dart';

class Buttons extends StatelessWidget {
  final String icon;
  final void Function() ?onTap;
  const Buttons({super.key, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap??()=>{},
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            border: Border.all(color: MyColors.primary2),
            borderRadius: BorderRadius.circular(10)),
        child: Image.asset(
          icon,
          width: 16,
          height: 16,
        ),
      ),
    );
  }
}
