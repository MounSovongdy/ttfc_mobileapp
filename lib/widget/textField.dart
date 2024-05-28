import 'package:flutter/material.dart';
import 'package:ttfc_app/style/constant.dart';

class TextFieldWidget {
  static TextField simTextField(
    String labelTxt, {
    required TextEditingController controller,
    icon,
    TextInputType? keyboardtype,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardtype,
      decoration: InputDecoration(
        labelText: labelTxt,
        // Adjust as needed for locale
        labelStyle: const TextStyle(
          fontSize: fontText,
          fontWeight: FontWeight.bold,
          color: mainColor,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        border: OutlineInputBorder(
          // Outline border style
          borderRadius: BorderRadius.circular(defaultCircular),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          // Border style when TextField is focused
          borderRadius: BorderRadius.circular(defaultCircular),
          borderSide: const BorderSide(color: mainColor, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          // Border style when TextField is enabled but not focused
          borderRadius: BorderRadius.circular(defaultCircular),
          borderSide: const BorderSide(color: Colors.grey, width: 1.0),
        ),
        errorBorder: OutlineInputBorder(
          // Border style when TextField has an error
          borderRadius: BorderRadius.circular(defaultCircular),
          borderSide: const BorderSide(color: Colors.red, width: 1.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          // Border style when TextField is focused and has an error
          borderRadius: BorderRadius.circular(defaultCircular),
          borderSide: const BorderSide(color: Colors.red, width: 2.0),
        ),
        prefixIcon: icon,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 30.0,
        ), // Padding inside the TextField
      ),
    );
  }

  static TextField phoneTextField(
    String labelTxt,
    String prefixTxt,
    String hintTxt, {
    required TextEditingController controller,
    icon,
    TextInputType? keyboardtype,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardtype,
      decoration: InputDecoration(
        labelText: labelTxt,
        prefixText: prefixTxt,
        // Adjust as needed for locale
        hintText: hintTxt,
        labelStyle: const TextStyle(
          fontSize: fontText,
          fontWeight: FontWeight.bold,
          color: mainColor,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        border: OutlineInputBorder(
          // Outline border style
          borderRadius: BorderRadius.circular(defaultCircular),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          // Border style when TextField is focused
          borderRadius: BorderRadius.circular(defaultCircular),
          borderSide: const BorderSide(color: mainColor, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          // Border style when TextField is enabled but not focused
          borderRadius: BorderRadius.circular(defaultCircular),
          borderSide: const BorderSide(color: Colors.grey, width: 1.0),
        ),
        errorBorder: OutlineInputBorder(
          // Border style when TextField has an error
          borderRadius: BorderRadius.circular(defaultCircular),
          borderSide: const BorderSide(color: Colors.red, width: 1.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          // Border style when TextField is focused and has an error
          borderRadius: BorderRadius.circular(defaultCircular),
          borderSide: const BorderSide(color: Colors.red, width: 1.0),
        ),
        prefixIcon: icon,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 30.0,
        ), // Padding inside the TextField
      ),
    );
  }
}


class ComboBoxExample extends StatefulWidget {
  const ComboBoxExample({super.key});

  @override
  _ComboBoxExampleState createState() => _ComboBoxExampleState();
}

class _ComboBoxExampleState extends State<ComboBoxExample> {
  final List<String> _dropdownItems = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  late String _selectedItem;

  @override
  void initState() {
    super.initState();
    _selectedItem = _dropdownItems[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody (BuildContext context){
    return DropdownButtonFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultCircular),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultCircular),
        ),
        filled: false,
        fillColor: mainColor,
      ),
      value: _selectedItem,
      items: _dropdownItems.map((String item) {
        return DropdownMenuItem(
          value: item,
          child: Text(item),
        );
      }).toList(),
      onChanged: (newValue) {
        setState(() {
          _selectedItem = newValue!;
        });
      },
    );
  }
}
