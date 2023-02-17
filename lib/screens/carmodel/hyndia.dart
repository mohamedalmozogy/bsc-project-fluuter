import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class hyndia extends StatefulWidget {
  @override
  State<hyndia> createState() => _hyndiaState();
}

class _hyndiaState extends State<hyndia> {
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
            DropdownButtonFormField(
              items: [],
              onChanged: (val) {},
              hint: Text('اختر الموديل'),
              decoration: InputDecoration(hintTextDirection: TextDirection.rtl),
            ),
            TextField(
              textDirection: TextDirection.rtl,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefix: DropdownButton(
                    items: [],
                    onChanged: (val) {},
                  ),
                  labelText: 'الموديل',
                  hintText: 'اختر الموديل',
                  hintTextDirection: TextDirection.rtl),
            ),
          ],
        ),
      ),
    );
  }
}
