// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'profile_page.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(profile_page());
// }
//
// class profile_page extends StatefulWidget {
//   const profile_page({super.key});
//
//   @override
//   State<profile_page> createState() => _profile_pageState();
// }
//
// class _profile_pageState extends State<profile_page> {
//   final double CoverHeight = 280;
//   final double ProfileHeight = 150;
//   @override
//   Widget build(BuildContext context) {
//     final top = CoverHeight - ProfileHeight * 1.5;
//     return Scaffold(
//       // appBar: AppBar(
//       //   backgroundColor: Colors.transparent,
//       //   elevation: 0,
//       //   leading: Container(
//       //     padding: EdgeInsets.only(left: 18),
//       //     child: CircleAvatar(
//       //       radius: 30,
//       //       backgroundColor: Color(0xff4c505b),
//       //       child: IconButton(
//       //           color: Colors.white,
//       //           onPressed: () {
//       //             Navigator.pushNamed(context, 'home');
//       //           },
//       //           icon: Icon(
//       //             Icons.arrow_back,
//       //           )),
//       //     ),
//       //   ),
//       // ),
//         body: Stack(
//           alignment: Alignment.center,
//           children: [
//             buildCoverImage(),
//             Positioned(
//               top: top,
//               child: buildProfileLogo(),
//             ),
//             FourRowsLayout(),
//           ],
//         ));
//   }
// }
//
// Widget buildCoverImage() => Container(
//   decoration: BoxDecoration(
//       image: DecorationImage(
//           image: AssetImage('assets/doodle.png'), fit: BoxFit.cover)),
// );
//
// Widget buildProfileLogo() => CircleAvatar(
//   backgroundColor: Color.fromARGB(255, 202, 225, 243),
//   child: Text(
//     "V",
//     style: TextStyle(
//         color: Colors.blue, fontSize: 27, fontWeight: FontWeight.w500),
//   ),
//   radius: 45,
// );
//
// // WidgetbuildContext()=> Column(
// // children:
// // const SizedBox (height: 8),
// // Text ('Gurjot Singh'
// // style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold ), // Text
// // const SizedBox (height: 8),
// // Text (
// // 'gmail.com',
// // style: TextStyle(fontSize: 20, color: Colors.black ), // Text
// // const SizedBox (height: 16),
// // row(
// //   MainAxisAlignment:MainAxisAlignment.center,
// //   children:[
// //     IconButton(
// //                   icon: const Icon(Icons.person),
// //                   color: Colors.red,
// //                   onPressed: () {}
// //                   ),
// //                   const SizedBox(width:12),
// //                   IconButton(
// //                   icon: const Icon(Icons.person),
// //                   color: Colors.red,
// //                   onPressed: () {}
// //                   ),
// //                   const SizedBox(width:12),
// //                   IconButton(
// //                   icon: const Icon(Icons.person),
// //                   color: Colors.red,
// //                   onPressed: () {}
// //                   ),
// //                   const SizedBox(width:12),
//
// // )
// // Divider(),
// // const SizedBox (height: 16),
// // buildAbout(),
// // const SizedBox (height: 32),),),),);
//
// // Widget buildicon(IconData icon) => CircleAvatar(
// //       radius: 25,
// //       child: Center(child: Icon(icon, size: 32)),
// //     );
//
// // class profile_page extends StatefulWidget {
// //   const profile_page({super.key});
//
// //   @override
// //   State<profile_page> createState() => _profile_pageState();
// // }
//
// // class _profile_pageState extends State<profile_page> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       decoration: BoxDecoration(
// //           image: DecorationImage(
// //               image: AssetImage('assets/login.png'), fit: BoxFit.cover)),
// //       child: Scaffold(
// //         appBar: AppBar(
// //           backgroundColor: Colors.transparent,
// //           elevation: 0,
// //           leading: Container(
// //             padding: EdgeInsets.only(left: 18),
// //             child: CircleAvatar(
// //               radius: 30,
// //               backgroundColor: Color(0xff4c505b),
// //               child: IconButton(
// //                   color: Colors.white,
// //                   onPressed: () {
// //                     Navigator.pushNamed(context, 'home');
// //                   },
// //                   icon: Icon(
// //                     Icons.arrow_back,
// //                   )),
// //             ),
// //           ),
// //           // title: Row(
// //           //   children: [
// //           //     Text(
// //           //       'Profile',
// //           //       style: TextStyle(
// //           //         color: Colors.black,
// //           //         fontSize: 27,
// //           //         fontWeight: FontWeight.w700,
// //           //       ),
// //           //     ),
// //           //   ],
// //           // ),
// //           // centerTitle: true,
// //           // actions: [
// //           //   Padding(
// //           //     padding: const EdgeInsets.only(right: 24.0),
// //           //     child: Container(
// //           //       padding: EdgeInsets.all(8),
// //           //       decoration: BoxDecoration(
// //           //         color: Color.fromARGB(255, 233, 234, 228),
// //           //         borderRadius: BorderRadius.circular(8),
// //           //       ),
// //           //       child: IconButton(
// //           //           icon: const Icon(Icons.person),
// //           //           color: Colors.red,
// //           //           onPressed: () {
// //           //             Navigator.pushNamed(context, 'profile');
// //           //           }),
// //           //     ),
// //           //   ),
// //           // ],
// //         ),
// //         body: Container(
// //           color: Colors.grey.shade100,
// //           padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
// //           child: Column(
// //             children: [
// //               Card(
// //                 child: Container(
// //                     padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
// //                     child: Row(
// //                       children: [
// //                         Expanded(
// //                             flex: 2,
// //                             child: CircleAvatar(
// //                               backgroundColor:
// //                                   Color.fromARGB(255, 202, 225, 243),
// //                               child: Text(
// //                                 "V",
// //                                 style: TextStyle(
// //                                     color: Colors.blue,
// //                                     fontSize: 27,
// //                                     fontWeight: FontWeight.w500),
// //                               ),
// //                               minRadius: 30,
// //                             )),
// //                         Expanded(
// //                           flex: 8,
// //                           child: Container(
// //                             padding: EdgeInsets.only(left: 20, right: 20),
// //                             child: Column(
// //                               crossAxisAlignment: CrossAxisAlignment.start,
// //                               children: [
// //                                 Text(
// //                                   "Varada",
// //                                   style: TextStyle(
// //                                       fontSize: 27,
// //                                       fontWeight: FontWeight.w500),
// //                                 ),
// //                                 Text(
// //                                   "gmail.com",
// //                                   style: TextStyle(
// //                                       fontSize: 19,
// //                                       fontWeight: FontWeight.w300),
// //                                 ),
// //                                 Text(
// //                                   "view activity",
// //                                   style: TextStyle(
// //                                     fontSize: 13,
// //                                   ),
// //                                 ),
// //                               ],
// //                             ),
// //                           ),
// //                         )
// //                       ],
// //                     )),
// //               )
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
// class FourRowsLayout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         // First row with three columns
//         SizedBox(height: 225),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//               child: Container(
//                 color: Color.fromARGB(255, 181, 217, 247),
//                 height: 100,
//                 child: Center(
//                   child: Text('Column 1'),
//                 ),
//               ),
//             ),
//             SizedBox(width: 16.0),
//             Expanded(
//               child: Container(
//                 color: Color.fromARGB(255, 181, 217, 247),
//                 height: 100,
//                 child: Center(
//                   child: Text('Column 2'),
//                 ),
//               ),
//             ),
//             SizedBox(width: 16.0),
//             Expanded(
//               child: Container(
//                 color: Color.fromARGB(255, 181, 217, 247),
//                 height: 100,
//                 child: Center(
//                   child: Text('Column 3'),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         SizedBox(height: 16.0),
//         // Second row with one column
//         Container(
//           color: Color.fromARGB(255, 181, 217, 247),
//           height: 100,
//           child: Center(
//             child: Text('Row 2'),
//           ),
//         ),
//         SizedBox(height: 16.0),
//         // Third row with one column
//         Container(
//           color: Color.fromARGB(255, 181, 217, 247),
//           height: 100,
//           child: Center(
//             child: Text('Row 3'),
//           ),
//         ),
//         SizedBox(height: 16.0),
//         // Fourth row with one column
//         Container(
//           color: Color.fromARGB(255, 181, 217, 247),
//           height: 100,
//           child: Center(
//             child: Text('Row 4'),
//           ),
//         ),
//       ],
//     );
//   }
// }



import 'package:flutter/material.dart';

void main() {
  runApp(ProfilePage());
}
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Swiggy Profile',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ProfilePage(),
//     );
//   }
// }

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String userName = "John Doe";
  String userEmail = "john.doe@example.com";
  String userPhoneNumber = "+1 123-456-7890";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_image.jpg'),
            ),
            SizedBox(height: 16),
            Text(
              'Name: $userName',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Email: $userEmail',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Phone Number: $userPhoneNumber',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implement logic to navigate to the edit profile page
                // Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilePage()));
              },
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
