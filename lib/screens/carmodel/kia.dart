import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class kia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Color.fromARGB(255, 102, 102, 102),
        ),
        title: Text(
          'معلومات السيارة',
          style:
              TextStyle(fontSize: 20, fontFamily: 'Cairo', color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'الشركة المصنعة',
              textAlign: TextAlign.right,
            ),
            DropDownTextField(
              textFieldDecoration:
                  InputDecoration(hintTextDirection: TextDirection.rtl),
              // initialValue: "name4",
              // readOnly: false,

              clearOption: true,

              keyboardType: TextInputType.number,
              autovalidateMode: AutovalidateMode.always,
              clearIconProperty: IconProperty(color: Colors.green),
              searchDecoration: const InputDecoration(
                  hintText: "enter your custom hint text here"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Required field";
                } else {
                  return null;
                }
              },
              dropDownItemCount: 6,

              dropDownList: const [
                DropDownValueModel(name: 'name1', value: "value1"),
                DropDownValueModel(
                    name: 'name2',
                    value: "value2",
                    toolTipMsg:
                        "DropDownButton is a widget that we can use to select one unique value from a set of values"),
                DropDownValueModel(name: 'name3', value: "value3"),
                DropDownValueModel(
                    name: 'name4',
                    value: "value4",
                    toolTipMsg:
                        "DropDownButton is a widget that we can use to select one unique value from a set of values"),
                DropDownValueModel(name: 'name5', value: "value5"),
                DropDownValueModel(name: 'name6', value: "value6"),
                DropDownValueModel(name: 'name7', value: "value7"),
                DropDownValueModel(name: 'name8', value: "value8"),
              ],
              onChanged: (val) {},
            ),
          ],
        ),
      ),
    );
  }
}
