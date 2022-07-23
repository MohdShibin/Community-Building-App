// // import 'package:flutter/material.dart';

// // class FindMatchScreen extends StatefulWidget {
// //   const FindMatchScreen({Key? key}) : super(key: key);

// //   @override
// //   State<FindMatchScreen> createState() => _FindMatchScreenState();
// // }

// // class _FindMatchScreenState extends State<FindMatchScreen> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Container(),
// //     );
// //   }
// // }

// // import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:provider/provider.dart';
// // import 'package:two_days/components/app_bar.dart';
// // import 'package:two_days/models/user_model.dart';
// // import 'package:two_days/screens/chat_screen.dart';
// // import 'package:two_days/services/auth_service.dart';
// // import 'package:two_days/services/firestore_service.dart';
// // import 'package:two_days/utilities.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   // final FirestoreService _firestoreService = FirestoreService();

//   bool _isMatching = false;
//   bool foundUser = false;

//   // User matchedUser;

//   //
//   bool haveChecked = false;
//   bool isOldMatch = true;
//   void setNewMatch() {
//     if (!haveChecked) {
//       isOldMatch = false;
//     }
//   }

//   // Future<void> match() async {
//   //   setState(() {
//   //     _isMatching = true;
//   //   });
//   //   matchedUser = await _firestoreService.match();

//   //   if (matchedUser == null) {
//   //     showDialog(
//   //       context: context,
//   //       child: AlertDialog(
//   //         content: Text(
//   //           "Can't find a match",
//   //           textAlign: TextAlign.center,
//   //         ),
//   //       ),
//   //     );
//   //     setState(() {
//   //       _isMatching = false;
//   //     });
//   //   } else {
//   //     setState(() {
//   //       _isMatching = false;
//   //       foundUser = true;
//   //     });
//   //   }
//   // }

//   Widget buildStartMatchingButton() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         _isMatching
//             ? Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   SpinKitDoubleBounce(
//                     color: Colors.blue[200],
//                     size: 150,
//                     duration: Duration(seconds: 3),
//                   ),
//                   SizedBox(height: 40),
//                   Text(
//                     "Searching..",
//                     style: TextStyle(fontSize: 18, color: Colors.black38),
//                   )
//                 ],
//               )
//             : Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     GestureDetector(
//                       onTap: (){},
//                       child: Container(
//                         child: Center(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: <Widget>[
//                               Text(
//                                 "2",
//                                 style: TextStyle(
//                                     fontSize: 60,
//                                     color: Colors.white,
//                                     height: 1),
//                               ),
//                               Text(
//                                 " Days",
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   height: 3,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         alignment: Alignment.center,
//                         width: 150,
//                         height: 150,
//                         decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Colors.blue[400],
//                             boxShadow: [
//                               BoxShadow(
//                                 blurRadius: 15,
//                                 color: Colors.blue[200],
//                                 offset: Offset(-3, 3),
//                               )
//                             ]),
//                       ),
//                     ),
//                     SizedBox(height: 40),
//                     Text(
//                       "Start Matching",
//                       style: TextStyle(
//                         fontSize: 18,
//                         color: Colors.black38,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     // User currentUserData = Provider.of<User>(context);
//     double screenHeight = MediaQuery.of(context).size.height;

//     Widget buildMatchedUI() {
//       // returning the chat screen
//       return Scaffold(
//         body: Container()
        
        
//         // StreamBuilder(
//         //   stream: _firestoreService
//         //       .getMatchedUserDetails(currentUserData.currentMatch),
//         //   builder: (BuildContext context, AsyncSnapshot<MatchedUser> snapshot) {
//         //     MatchedUser matchedUser = snapshot.data;
//         //     if (matchedUser == null) {
//         //       print("matched user data = null");
//         //       return Center(
//         //         child: CircularProgressIndicator(
//         //           valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
//         //         ),
//         //       );
//         //     } else if (isOldMatch &&
//         //         validateUserMatch(currentUserData, matchedUser)) {
//         //       // we got matched user's data if this match is in sync and valid
//         //       // return chat screen, else it is not in sync, so we are clearing the
//         //       // current user's data and set it to 'not matched'.

//         //       return Provider<MatchedUser>.value(
//         //         value: matchedUser,
//         //         child: ChatScreen(),
//         //       );
//         //     } else {
//         //       _firestoreService.revokeOnlyCurrentUsersMatch();
//         //       return Center(
//         //         child: Text("Something is wrong in this match"),
//         //       );
//         //     }
//         //   },
//         // ),
//       );
//     }

//     Widget buildNotMatchedUI() {
//       return Scaffold(
//         appBar: 
        
//         CustomAppBar(
//           trailing: PopupMenuButton(
//             onSelected: (value) {
//               if (value == "Edit Profile") {
//                 Navigator.pushNamed(context, "/create_profile_page",
//                     arguments: currentUserData);
//               } else if (value == "Log out") {
//                 showDialog(
//                   context: context,
//                   child: AlertDialog(
//                     content: Text("Are you sure you want to log out?"),
//                     actions: <Widget>[
//                       FlatButton(
//                         child: Text("Cancel"),
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                       ),
//                       FlatButton(
//                         child: Text(
//                           "Log out",
//                           style: TextStyle(
//                             color: Colors.red,
//                           ),
//                         ),
//                         onPressed: () async {
//                           await AuthService().signOut();
//                           Navigator.pop(context);
//                         },
//                       ),
//                     ],
//                   ),
//                 );
//               }
//             },
//             itemBuilder: (_) => <PopupMenuItem<String>>[
//               PopupMenuItem<String>(
//                 value: "Edit Profile",
//                 height: 20,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     'Edit Profile',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ),
//               ),
//               PopupMenuItem<String>(
//                 value: "Log out",
//                 height: 20,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     'Log out',
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.red,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           title: currentUserData.name == null || currentUserData.name == ""
//               ? GestureDetector(
//                   onTap: () {
//                     Navigator.of(context).pushNamed("/create_profile_page",
//                         arguments: currentUserData);
//                   },
//                   child: Text(
//                     "Complete your Profile",
//                     style: TextStyle(fontSize: 18),
//                   ),
//                 )
//               : Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                       currentUserData.name,
//                       style: TextStyle(fontSize: 18),
//                     ),
//                     SizedBox(height: 4),
//                     Text(
//                       currentUserData.email,
//                       style: TextStyle(fontSize: 13, color: Colors.black26),
//                     ),
//                   ],
//                 ),
//           preferredSize: appBarSize(screenHeight),
//           leading: currentUserData.photoUrl == null ||
//                   currentUserData.photoUrl == ""
//               ? Container(
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.grey[300],
//                     // border: Border.all(color: Colors.black26, width: 0.5),
//                   ),
//                   child: IconButton(
//                     icon: Icon(Icons.add),
//                     onPressed: () {
//                       // navigate to create_profile page
//                       Navigator.of(context).pushNamed("/create_profile_page",
//                           arguments: currentUserData);
//                     },
//                   ),
//                 )
//               : Container(
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image:
//                           CachedNetworkImageProvider(currentUserData.photoUrl),
//                       fit: BoxFit.cover,
//                     ),
//                     shape: BoxShape.circle,
//                   ),
//                   width: screenHeight * 0.07,
//                   height: screenHeight * 0.07,
//                 ),
//         ),
//         body: buildStartMatchingButton(),
//       );
//     }

//     return Scaffold(
//       body: Builder(
//         builder: (context) {
//           if (currentUserData.isMatched) {
//             return buildMatchedUI();
//           } else {
//             setNewMatch();
//             // returning screen with match button
//             return buildNotMatchedUI();
//           }
//         },
//       ),
//     );
//   }
// }
