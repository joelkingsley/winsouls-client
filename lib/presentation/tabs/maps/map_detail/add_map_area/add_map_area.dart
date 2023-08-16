import 'package:flutter/cupertino.dart';

class AddMapAreaPage extends StatefulWidget {
  const AddMapAreaPage({super.key});

  @override
  State<AddMapAreaPage> createState() => _AddMapAreaPageState();
}

class _AddMapAreaPageState extends State<AddMapAreaPage> {
  late TextEditingController _titleController;
  late TextEditingController _subtitleController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: 'City 1');
  }

  @override
  void dispose() {
    _titleController.dispose();
    _subtitleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Map'),
      ),
      child: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                CupertinoTextField(
                  controller: _titleController,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 25),
                  placeholder: 'Title (Eg. Pforzheim City)',
                  onSubmitted: (String text) => (),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
