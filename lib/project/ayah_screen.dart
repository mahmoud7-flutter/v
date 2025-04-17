import 'package:flutter/material.dart';
 //import 'package:untitled11/project/mmoohh.dart';




class AyahScreen extends StatelessWidget {
  final String surahName;
  final List<String> ayahs;

  const AyahScreen({super.key, required this.surahName, required this.ayahs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(surahName),
      ),
      body: ListView.builder(
        itemCount: ayahs.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.purple.shade100,
              child: Text('${index + 1}'),
            ),
            title: Text(
              ayahs[index],
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 18),
            ),
          );
        },
      ),
    );
  }
}
