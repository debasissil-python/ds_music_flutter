import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

// class XylophoneApp extends StatelessWidget {
//   void musicNote(int melodies) {
//     final player = AudioCache();
//     player.play('note$melodies.wav');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SafeArea(
//           child: Container(
//             padding: EdgeInsets.all(8),
//             margin: EdgeInsets.all(4),
//             color: Colors.black,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     musicNote(1);
//                   },
//                   child: Text(
//                     'Sa (Agni)',
//                     style: TextStyle(
//                       fontSize: 10,
//                       letterSpacing: 2,
//                       wordSpacing: 2,
//                       fontWeight: FontWeight.normal,
//                     ),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.red, // background
//                     onPrimary: Colors.white,
//                     shadowColor: Colors.white,
//                     elevation: 10,
//                     alignment: Alignment.bottomLeft,
//                     minimumSize: Size(double.infinity, 90),
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     musicNote(2);
//                   },
//                   child: Text(
//                     'Re-Rishabh (Brahma)',
//                     style: TextStyle(
//                       fontSize: 10,
//                       letterSpacing: 2,
//                       wordSpacing: 2,
//                       fontWeight: FontWeight.normal,
//                     ),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.pink, // background
//                     onPrimary: Colors.white,
//                     shadowColor: Colors.white,
//                     elevation: 10,
//                     alignment: Alignment.bottomLeft,
//                     minimumSize: Size(double.infinity, 90),
//                   ), // foreground
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     musicNote(3);
//                   },
//                   child: Text(
//                     'Ga-Gandhar (Saraswati)',
//                     style: TextStyle(
//                       fontSize: 10,
//                       letterSpacing: 2,
//                       wordSpacing: 2,
//                       fontWeight: FontWeight.normal,
//                     ),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.white, // background
//                     onPrimary: Colors.blueGrey[900],
//                     shadowColor: Colors.white,
//                     elevation: 10,
//                     alignment: Alignment.bottomLeft,
//                     minimumSize: Size(double.infinity, 90),
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     musicNote(4);
//                   },
//                   child: Text(
//                     'Ma-Madhyam (Shiva)',
//                     style: TextStyle(
//                       fontSize: 10,
//                       letterSpacing: 2,
//                       wordSpacing: 2,
//                       fontWeight: FontWeight.normal,
//                     ),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.blue[900], // background
//                     onPrimary: Colors.white,
//                     shadowColor: Colors.white,
//                     elevation: 10,
//                     alignment: Alignment.bottomLeft,
//                     minimumSize: Size(double.infinity, 90),
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     musicNote(5);
//                   },
//                   child: Text(
//                     'Pa-Pancham (Laxmi)',
//                     style: TextStyle(
//                       fontSize: 10,
//                       letterSpacing: 2,
//                       wordSpacing: 2,
//                       fontWeight: FontWeight.normal,
//                     ),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.yellow, // background
//                     onPrimary: Colors.black,
//                     shadowColor: Colors.white,
//                     elevation: 10,
//                     alignment: Alignment.bottomLeft,
//                     minimumSize: Size(double.infinity, 90),
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     musicNote(6);
//                   },
//                   child: Text(
//                     'Dha-Dhaivata (Ganesha)',
//                     style: TextStyle(
//                       fontSize: 10,
//                       letterSpacing: 2,
//                       wordSpacing: 2,
//                       fontWeight: FontWeight.normal,
//                     ),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.green, // background
//                     onPrimary: Colors.white,
//                     shadowColor: Colors.white,
//                     elevation: 10,
//                     alignment: Alignment.bottomLeft,
//                     minimumSize: Size(double.infinity, 90),
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     musicNote(7);
//                   },
//                   child: Text(
//                     'Ni-Nishad (Sun God)',
//                     style: TextStyle(
//                       fontSize: 10,
//                       letterSpacing: 2,
//                       wordSpacing: 2,
//                       fontWeight: FontWeight.normal,
//                       textBaseline: TextBaseline.ideographic,
//                     ),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.red[900], // background
//                     onPrimary: Colors.white,
//                     shadowColor: Colors.yellowAccent,
//                     elevation: 10,
//                     alignment: Alignment.bottomLeft,
//                     minimumSize: Size(double.infinity, 90),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class XylophoneApp extends StatelessWidget {
  void musicNote(int melodies) {
    final player = AudioCache();
    player.play('note$melodies.wav');
  }

  Expanded buttons({
    required color,
    required primaryColors,
    required int melody,
    required text,
  }) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          musicNote(melody);
        },
        autofocus: true,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12,
            letterSpacing: 2,
            wordSpacing: 2,
            fontWeight: FontWeight.normal,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: color, // background
          onPrimary: primaryColors,
          // shadowColor: Colors.white,
          elevation: 5,
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.all(8),
          //minimumSize: Size(double.infinity, 0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          minimum: EdgeInsets.all(8),
          maintainBottomViewPadding: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buttons(
                color: Colors.red,
                melody: 1,
                primaryColors: Colors.white,
                text: 'Sa (Agni)',
              ),
              buttons(
                color: Colors.pink,
                melody: 2,
                primaryColors: Colors.white,
                text: 'Re-Rishabh (Brahma)',
              ),
              buttons(
                color: Colors.white,
                melody: 3,
                primaryColors: Colors.black,
                text: 'Ga-Gandhar (Saraswati)',
              ),
              buttons(
                color: Colors.blue.shade900,
                melody: 4,
                primaryColors: Colors.white,
                text: 'Ma-Madhyam (Shiva)',
              ),
              buttons(
                color: Colors.yellow,
                melody: 5,
                primaryColors: Colors.black,
                text: 'Pa-Pancham (Laxmi)',
              ),
              buttons(
                color: Colors.green,
                melody: 6,
                primaryColors: Colors.white,
                text: 'Dha-Dhaivata (Ganesha)',
              ),
              buttons(
                color: Colors.red.shade900,
                melody: 7,
                primaryColors: Colors.yellowAccent,
                text: 'Ni-Nishad (Sun God)',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
