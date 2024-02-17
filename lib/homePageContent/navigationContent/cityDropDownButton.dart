import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:home_services/constants/colors.dart';

class CityDropDownButton extends StatefulWidget {
  const CityDropDownButton({super.key});

  @override
  State<CityDropDownButton> createState() => _CityDropDownButtonState();
}

class _CityDropDownButtonState extends State<CityDropDownButton> {
  List<String> itemList = [
    "item1",
    "item2",
    "item3",
    "item4",
    "item5",
    "item6",
    "item7",
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          hint: Row(
            children: [
              
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  'Select Item',
                  style: TextStyle(
                    fontSize: 14,
                    color: TColors.grey,
                    letterSpacing: 1.2
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          items: itemList
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Center(
                        child: Text(
                          item,
                          style: TextStyle(
                            fontSize: 14,
                            // fontWeight: FontWeight.normal,
                            color: TColors.black,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (String? value) {
            setState(() {
              selectedValue = value;
            });
          },
          buttonStyleData: ButtonStyleData(
            height: 40,
            width: 150,
            padding: const EdgeInsets.only(left: 14, right: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.transparent,),
              color: Colors.grey[200],
            ),
            // elevation: 1,
          ),
          
          iconStyleData: const IconStyleData(
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
            ),
            iconSize: 14,
            iconEnabledColor: Colors.black,
            iconDisabledColor: Colors.grey,
          ),

          dropdownStyleData: DropdownStyleData(
            maxHeight: 200,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            offset: const Offset(0, -2),
            scrollbarTheme: ScrollbarThemeData(
              radius: const Radius.circular(40),
              thickness: MaterialStateProperty.all<double>(6),
              thumbVisibility: MaterialStateProperty.all<bool>(true),
            ),
          ),

          menuItemStyleData: const MenuItemStyleData(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 0),
          ),
        ),
    );
  }
}
