import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// classwork
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         body: SafeArea(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 color: Colors.red,
//                 height: double.infinity,
//                 width: 100.0,
//               ),
//               Container(
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         height: 100.0,
//                         width: 100.0,
//                         color: Colors.yellow,
//                       ),
//                       Container(
//                         height: 100.0,
//                         width: 100.0,
//                         color: Colors.green,
//                       ),
//                     ]),
//               ),
//               Container(
//                 color: Colors.blue,
//                 height: double.infinity,
//                 width: 100.0,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//class work ends here

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          Column(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.black)),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Row(),
          Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 14.0, 40.0, 14.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                // Image border

                child: SizedBox.fromSize(
                  child: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BNjcxMjg1Njg2NF5BMl5BanBnXkFtZTcwMjQ4NzMzMw@@._V1_.jpg',
                      fit: BoxFit.cover),
                ),
              )),
          const Text('Charlie and the Chocolate Factory',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: const Icon(
                  Icons.lock_clock,
                ),
              ),
              Container(
                child: const Icon(
                  Icons.calendar_today_sharp,
                ),
              ),
              Container(
                child: const Icon(
                  Icons.star,
                ),
              )
            ],
          )
          //
        ],
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int sum = 0;

//   List<String> quotes = ['love', 'money', 'car'];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'context',
//           style: TextStyle(color: Colors.white, fontSize: 28),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.black,
//         actions: [
//           IconButton(
//             onPressed: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (BuildContext context) {
//                 return Scaffold(
//                     appBar: AppBar(
//                       title: const Text('This is next Page'),
//                     ),
//                     body: Column(
//                       children: [
//                         for (var i in quotes) Text(i.toString()),
//                         const Text('okay')
//                       ],
//                     ));
//               }));
//             },
//             icon: const Icon(Icons.add_alert),
//           )
//         ],
//       ),
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             '$sum times',
//             // ignore: prefer_const_constructors
//             style: TextStyle(fontSize: 30, color: Colors.green),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             sum++;
//           });
//         },
//         backgroundColor: Colors.green,
//         child: const Icon(Icons.navigation),
//       ),
//     );
//   }
// }
