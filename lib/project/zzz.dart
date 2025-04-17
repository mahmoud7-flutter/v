import 'package:flutter/material.dart';
 import 'package:untitled11/project/mmoohh.dart';

class zzz extends StatelessWidget {
  const zzz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("mahmoud"),
        ),
        body: ListView(
          children: [
            Expanded(
              child: Container(
                color: Colors.green,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Mmoohh(),
                          ));
                    },
                    child: Text(
                      "go to mmoohh",
                      textAlign: TextAlign.center,
                    )),
              ),
            ),
            Expanded(
              child: Container(
                  color: Colors.green,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  child: MaterialButton(child: Text("blace"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )),
            ),
          ],
        ));
  }
}

// import 'package:flutter/material.dart';

// class Zzz extends StatelessWidget {
//   const Zzz({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("mmm"),
        
//       ),
//       body: Container(),
//     );
//   }
// }
