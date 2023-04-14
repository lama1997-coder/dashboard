part of 'widget_import.dart';

class DropDown extends StatefulWidget {
  final List<String> items;
  final double? width;
  final String? title;
  final bool? border;
  final bool? changing;
  const DropDown(
      {super.key,
      required this.items,
      this.title,
      this.border,
      this.width,
      this.changing});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: widget.width ?? 70,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        border: widget.border ?? true
            ? Border.all(
                color: MyColors.borderColor.withOpacity(0.3),
                style: BorderStyle.solid,
                width: 0.80)
            : null,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          underline: SizedBox(),
          // decoration: InputDecoration(
          //   focusColor: MyColors.dengerColor,

          //   fillColor: MyColors.dengerColor,

          //   // enabledBorder: InputBorder.none,
          //   //Add isDense true and zero Padding.
          //   //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
          //   isDense: true,
          //   contentPadding: EdgeInsets.zero,
          //   // border: widget.border ?? InputBorder.none
          //   //Add more decoration as you want here
          //   //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
          // ),

          icon: Icon(
            Icons.expand_more,
            color: MyColors.textColor,
          ),
          isExpanded: true,
          value: selectedValue,
          hint: DefaultText(title: widget.title ?? ""),
          items: widget.items
              .map((item) => DropdownMenuItem<String>(
                  value: item, child: DefaultText(title: item)))
              .toList(),
          // validator: (value) {
          //   // if (value == null) {
          //   //   return 'Please select gender.';
          //   // }
          //   // return null;
          // },
          onChanged: (value) {
            selectedValue = value;
            widget.changing ?? true ? setState(() {}) : null;
            //Do something when changing the item if you want.
          },
          // onSaved: (value) {
          //   selectedValue = value.toString();
          // },
        ),
      ),
    );
  }
}
