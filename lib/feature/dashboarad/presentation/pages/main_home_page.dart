import 'package:bookapp/feature/dashboarad/domain/entities/screen_resolution.dart';
import 'package:bookapp/feature/dashboarad/presentation/pages/form_add_book.dart';
import 'package:bookapp/feature/dashboarad/presentation/widget/widget_button.dart';
import 'package:flutter/material.dart';
import '../../domain/entities/language_key.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  LanguagesKey languageKey = LanguagesKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  widgetButton.button(
                      isExpanded: true,
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FormAddBook()),
                          ),
                      title: languageKey.buttonadd),
                  screenResolution.mediumspacerow,
                  widgetButton.button(
                      isExpanded: true,
                      onPressed: () {},
                      title: languageKey.buttondelete),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
