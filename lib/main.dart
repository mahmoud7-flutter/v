// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:untitled11/mohmoud.dart';
// import 'package:untitled11/paceg/pacj1.dart' as local;
// import 'package:untitled11/paceg/pacj1.dart';
// import 'package:untitled11/project/mmoohh.dart';
// import 'package:untitled11/project/zzz.dart';
// import 'package:untitled11/project/hhh.dart';
// import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:flutter/services.dart';
// import 'package:drop_down_list/drop_down_list.dart';
// import 'package:drop_down_list/model/selected_list_item.dart' as drop_down;
// import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   MyApp({super.key});
//   @override
//   State<MyApp> createState() => _MyAppstat();
// }

// class _MyAppstat extends State<MyApp> {
//   TextEditingController country = TextEditingController();
//   String? name;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(debugShowCheckedModeBanner: false, home: Mmoohh(),
//     theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.red)),

//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyCVApp());
// }

// class MyCVApp extends StatefulWidget {
//   @override
//   State<MyCVApp> createState() => _MyCVAppState();
// }

// class _MyCVAppState extends State<MyCVApp> {
//   ThemeMode _themeMode = ThemeMode.light;

//   void toggleTheme() {
//     setState(() {
//       _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'CV App',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         brightness: Brightness.light,
//         primarySwatch: Colors.indigo,
//         fontFamily: 'Roboto',
//       ),
//       darkTheme: ThemeData(
//         brightness: Brightness.dark,
//         primarySwatch: Colors.indigo,
//         fontFamily: 'Roboto',
//       ),
//       themeMode: _themeMode,
//       home: CVHomePage(onToggleTheme: toggleTheme),
//     );
//   }
// }

// class CVHomePage extends StatelessWidget {
//   final VoidCallback onToggleTheme;

//   const CVHomePage({Key? key, required this.onToggleTheme}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//       appBar: AppBar(
//         title: Text('CV App'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.brightness_6),
//             onPressed: onToggleTheme,
//           )
//         ],
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: LayoutBuilder(
//               builder: (context, constraints) {
//                 bool isWide = constraints.maxWidth > 600;

//                 return isWide
//                     ? Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(child: profileSection()),
//                           SizedBox(width: 40),
//                           Expanded(child: detailsSection()),
//                         ],
//                       )
//                     : Column(
//                         children: [
//                           profileSection(),
//                           SizedBox(height: 24),
//                           detailsSection(),
//                         ],
//                       );
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget profileSection() {
//     return Column(
//       children: [
//         CircleAvatar(
//           radius: 60,
//           backgroundImage: AssetImage('assets/profile.jpg'),
//         ),
//         SizedBox(height: 16),
//         Text(
//           'محمود أحمد',
//           style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//         ),
//         Text(
//           'مطور تطبيقات Flutter',
//           style: TextStyle(fontSize: 18, color: Colors.grey[700]),
//         ),
//         SizedBox(height: 16),
//       ],
//     );
//   }

//   Widget detailsSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Text(
//           'نبذة عني',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         SizedBox(height: 8),
//         Text(
//           'أنا مطور تطبيقات Flutter بخبرة في بناء واجهات استخدام احترافية وسلسة، أعمل على إنشاء تطبيقات مخصصة تلبي احتياجات العملاء.',
//           textAlign: TextAlign.center,
//         ),
//         SizedBox(height: 24),
//         Text(
//           'المهارات',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         SizedBox(height: 8),
//         SkillBar(skill: 'Flutter', level: 0.9),
//         SkillBar(skill: 'Firebase', level: 0.75),
//         SkillBar(skill: 'UI/UX Design', level: 0.7),
//         SizedBox(height: 24),
//         Text(
//           'تواصل معي',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         SizedBox(height: 10),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             IconButton(
//               icon: Icon(Icons.email),
//               onPressed: () {},
//             ),
//             IconButton(
//               icon: Icon(Icons.link),
//               onPressed: () {},
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }

// class SkillBar extends StatelessWidget {
//   final String skill;
//   final double level;

//   const SkillBar({required this.skill, required this.level});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: [
//             Expanded(flex: 2, child: Text(skill)),
//             Expanded(
//               flex: 5,
//               child: LinearProgressIndicator(
//                 value: level,
//                 color: Colors.indigo,
//                 backgroundColor: Colors.indigo[100],
//               ),
//             ),
//           ],
//         ),
//         SizedBox(height: 10),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:untitled11/auth/login.dart';
import 'package:untitled11/config.dart/config.dart';
import 'package:untitled11/project/mmoohh.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
//import 'config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyCVApp());
}

class MyCVApp extends StatefulWidget {
  @override
  State<MyCVApp> createState() => _MyCVAppState();
}

class _MyCVAppState extends State<MyCVApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Login()
      // Scaffold(
      //   appBar: AppBar(title: Text("mahmoud"),),
    );
    // );
  }
}
