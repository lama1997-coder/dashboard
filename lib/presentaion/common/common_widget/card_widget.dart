part of 'widget_import.dart';

class CardWidget extends StatelessWidget {
  final Widget child;
  const CardWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      //height: 10,
      decoration: BoxDecoration(
          border: Border.all(color: MyColors.primary, width: 1),
          boxShadow: [
            BoxShadow(
              blurStyle: BlurStyle.normal,
              color: MyColors.primary2.withOpacity(0.4),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset.zero, // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: MyColors.primary),
      child: child,
    );
  }
}
