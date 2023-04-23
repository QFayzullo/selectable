import 'package:flutter/material.dart';

import 'models.dart';

void main() {
  runApp(const SharedPreference());
}

class SharedPreference extends StatefulWidget {
  const SharedPreference({Key? key}) : super(key: key);

  @override
  State<SharedPreference> createState() => _SharedPreferenceState();
}

class _SharedPreferenceState extends State<SharedPreference> {
  final _userNameController = TextEditingController();
  var _selectedGender = Gender.MALE;
  var _selectedLanguage = Set<Language>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('User settings')),
        ),
        body: ListView(
          children: [
            ListTile(
              title: TextField(
                controller: _userNameController,
                decoration: InputDecoration(labelText: 'Username'),
              ),
            ),
            RadioListTile(
              title: Text('Male'),
              value: Gender.MALE,
              groupValue: _selectedGender,
              onChanged: (newValue) => setState(() {
                _selectedGender = newValue!;
              }),
            ),
            RadioListTile(
              title: Text('Female'),
              value: Gender.FEMALE,
              groupValue: _selectedGender,
              onChanged: (newValue) => setState(() {
                _selectedGender = newValue!;
              }),
            ),
            RadioListTile(
              title: Text('Other'),
              value: Gender.OTHER,
              groupValue: _selectedGender,
              onChanged: (newValue) => setState(() {
                _selectedGender = newValue!;
              }),
            ),
            Divider(height: 1,color: Colors.black,),
            CheckboxListTile(
                title: Text('Uzbek'),
                value: _selectedLanguage.contains(Language.UZBEK),
                onChanged: (_){}),
            CheckboxListTile(
                title: Text('Russian'),
                value: _selectedLanguage.contains(Language.RUSSIAN),
                onChanged: (_){}),
            CheckboxListTile(
                title: Text('English'),
                value: _selectedLanguage.contains(Language.ENGLISH),
                onChanged: (_){}),
            CheckboxListTile(
                title: Text('Korean'),
                value: _selectedLanguage.contains(Language.KOREAN),
                onChanged: (_){}),
          ],
        ),
      ),
    );
  }
}
