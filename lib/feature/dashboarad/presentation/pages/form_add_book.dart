import 'package:bookapp/feature/dashboarad/domain/entities/language_key.dart';
import 'package:bookapp/feature/dashboarad/domain/entities/screen_resolution.dart';
import 'package:bookapp/feature/dashboarad/presentation/bloc/form_validation_bloc/form_validator.dart';
import 'package:bookapp/feature/dashboarad/presentation/widget/datepicker.dart';
import 'package:bookapp/feature/dashboarad/presentation/widget/dropdown_button.dart';
import 'package:bookapp/feature/dashboarad/presentation/widget/text_form_field.dart';
import 'package:bookapp/feature/dashboarad/presentation/widget/widget_button.dart';
import 'package:flutter/material.dart';

class FormAddBook extends StatefulWidget {
  const FormAddBook({super.key});

  @override
  State<FormAddBook> createState() => _FormAddBookState();
}

class _FormAddBookState extends State<FormAddBook> {
  GlobalKey<FormState> _formState = GlobalKey<FormState>();
  FormValidator formValidator = FormValidator();
  LanguagesKey languagesKey = LanguagesKey();
  TextEditingController bookCodeController = TextEditingController(text: '');
  DateTime selectedDate = DateTime.now();
  String? date;
  String? _categorySelected;
  List<DropdownMenuItem<String>> _item = [
    DropdownMenuItem(value: 'Cerita', child: Text('Cerita')),
    DropdownMenuItem(value: 'Komputer', child: Text('Komputer')),
    DropdownMenuItem(value: 'Sosial', child: Text('Sosial')),
  ];
  @override
  void initState() {
    date = languagesKey.bookDateHinText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Form(
                  key: _formState,
                  child: Column(
                    children: [
                      Text(languagesKey.formaddtitle),
                      textFormField.field(
                        hintText: languagesKey.bookCodeHintText,
                        controller: bookCodeController,
                        validator: formValidator.bookcode,
                      ),
                      screenResolution.mediumspacecolumn,
                      textFormField.field(
                        hintText: languagesKey.bookTitleHintText,
                        controller: bookCodeController,
                        validator: formValidator.bookcode,
                      ),
                      screenResolution.mediumspacecolumn,
                      dropDownButton.dropdownbutton(
                          onChanged: _onChange,
                          value: _categorySelected,
                          hint: languagesKey.bookCategoryHinText,
                          item: _item),
                      screenResolution.mediumspacecolumn,
                      datePicker.datepicker(title: date, onTap: _onTap),
                      screenResolution.mediumspacecolumn,
                      textFormField.field(
                        hintText: languagesKey.bookCodeHintText,
                        controller: bookCodeController,
                        validator: formValidator.bookcode,
                      ),
                      screenResolution.mediumspacecolumn,
                      textFormField.field(
                        hintText: languagesKey.bookCodeHintText,
                        controller: bookCodeController,
                        validator: formValidator.bookcode,
                      ),
                      screenResolution.mediumspacecolumn,
                      textFormField.field(
                        hintText: languagesKey.bookCodeHintText,
                        controller: bookCodeController,
                        validator: formValidator.bookcode,
                      ),
                    ],
                  )),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: widgetButton.button(
                      isExpanded: false,
                      onPressed: _onPress,
                      title: languagesKey.buttonsavenewbook)),
            ],
          ),
        ),
      ),
    );
  }

  _onPress() {
    if (_formState.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
    }
  }

  _onTap() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1998),
      lastDate: DateTime(2050),
    );
    if (picked != null && picked != selectedDate) {
      date = "${picked.day}/${picked.month}/${picked.year}";
    }
    setState(() {});
  }

  _onChange(val) {
    _categorySelected = val;
    setState(() {});
  }
}
