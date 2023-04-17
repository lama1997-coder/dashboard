part of 'widget_import.dart';

class DefaulForm extends StatelessWidget {
  final String? hint;
  final Widget? icon;
  const DefaulForm({super.key, this.hint, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      decoration: InputDecoration(
        prefixIcon: icon ?? Container(),
        hintText: hint ?? "",
        hintStyle: TextStyle(color: MyColors.borderColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: BorderSide(
              width: 1,
              color: MyColors.borderColor.withOpacity(0.3)), //<-- SEE HERE
        ),
      ),
    );
  }
}
