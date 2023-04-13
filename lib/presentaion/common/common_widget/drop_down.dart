part of 'widget_import.dart';

class DropDown extends StatefulWidget {
  final List<String> items;
  final String? title;
  const DropDown({super.key, required this.items, this.title});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          fillColor: MyColors.dengerColor,
          enabledBorder: InputBorder.none,

          //Add isDense true and zero Padding.
          //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
          isDense: true,
          contentPadding: EdgeInsets.zero,
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(15),
          // ),
          //Add more decoration as you want here
          //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
        ),

        icon: Icon(Icons.expand_more,color: MyColors.textColor,),
        isExpanded: true,
        value: selectedValue,
        hint: DefaultText(title: widget.title ?? ""),
        items: widget.items
            .map((item) => DropdownMenuItem<String>(
                value: item, child: DefaultText(title: item)))
            .toList(),
        validator: (value) {
          // if (value == null) {
          //   return 'Please select gender.';
          // }
          // return null;
        },
        onChanged: (value) {
          //Do something when changing the item if you want.
        },
        // onSaved: (value) {
        //   selectedValue = value.toString();
        // },
      ),
    );
  }
}
