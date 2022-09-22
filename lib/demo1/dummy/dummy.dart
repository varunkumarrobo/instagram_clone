//registration
// Row(
//   crossAxisAlignment: CrossAxisAlignment.center,
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     const Text('Already got an account?'),
//     ElevatedButton(
//         style: TextButton.styleFrom(
//             elevation: 0, backgroundColor: Colors.grey.shade100),
//         onPressed: () {
//           Navigator.of(context).pop(
//             MaterialPageRoute(
//               builder: (context) => const MyHomePage(title: 'AAA'),
//             ),
//           );
//         },
//         child: Text('Log in',
//             style: TextStyle(
//                 color: Colors.indigo.shade300,
//                 fontWeight: FontWeight.bold,
//                 fontStyle: FontStyle.normal))),
//   ],
// )
// _formkey.currentState!.save();
// _formkey.currentState!.reset();
// Navigator.pushNamed(context, MyRoutes.homeRoute);
//setState(() {});

//basescreen
//optional
// Container(
// padding: const EdgeInsets.only(left: 10, top:50 ),
// height: 130,
// width: double.infinity,
// color: Colors.blue,
// child:Row(
// children: const [
// SizedBox(
// height: 80,
// ),
// CircleAvatar(
// radius: 35.0,
// backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_jhEBJCfxdfT55VROVcvkqhUr9WI1oNOJYA&usqp=CAU'),
// //child: Text("AH"),
// ),
// SizedBox(
// width: 10,
// ),
// Text("Angela",
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 20.0,
// ),)
// ],
// ),
// ),
// appBar: AppBar(
//   elevation: 0,
//   backgroundColor: Colors.white,
//   centerTitle: true,
//   title: const Text('INSTAGRAM',
//   style: TextStyle(
//     color: Colors.black,
//     fontStyle: FontStyle.italic,
//   ),),
//   actions:  <Widget>[
//     IconButton(onPressed: (){_onArrowButtonPressed();},
//         icon: const Icon(Icons.keyboard_arrow_down_outlined),
//     color: Colors.black,),
//     // Icon(
//     //   Icons.keyboard_arrow_down_outlined,size: 40,),
//     // FlatButton(
//     //   textColor: Colors.white,
//     //   onPressed: () {},
//     //   shape: const CircleBorder(side: BorderSide(color: Colors.transparent)),
//     //   child: const Text("Save"),
//     // ),
//   ],
//   // bottom: const TabBar(tabs: [
//   //   Tab(
//   //     text: "Chat",
//   //     icon: Icon(Icons.chat),
//   //   ),
//   //   Tab(
//   //     text: "Chat",
//   //     icon: Icon(Icons.chat),
//   //   ),
//   //   Tab(
//   //     text: "Chat",
//   //     icon: Icon(Icons.chat),
//   //   ),
//   // ]),
//   leading: InkWell(
//     onTap: ()
//     {
//       _key.currentState!.openDrawer();
//     },
//     child:const Icon(
//       Icons.message,
//       color: Colors.black,
//       size: 30,
//     ),
//   ),
// ),
//void _onArrowButtonPressed() {
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (context) {
  //         return Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: <Widget>[
  //             ListTile(
  //               leading: const Icon(Icons.photo),
  //               title: const Text('Photo'),
  //               onTap: () {
  //                 Navigator.pop(context);
  //               },
  //             ),
  //             ListTile(
  //               leading: const Icon(Icons.music_note),
  //               title: const Text('Music'),
  //               onTap: () {
  //                 Navigator.pop(context);
  //               },
  //             ),
  //             ListTile(
  //               leading: const Icon(Icons.videocam),
  //               title: const Text('Video'),
  //               onTap: () {
  //                 Navigator.pop(context);
  //               },
  //             ),
  //             ListTile(
  //               leading: const Icon(Icons.share),
  //               title: const Text('Share'),
  //               onTap: () {
  //                 Navigator.pop(context);
  //               },
  //             ),
  //             ListTile(
  //               leading: const Icon(Icons.logout),
  //               title: const Text('Logout'),
  //               onTap: () {
  //                 Navigator.pop(context);
  //               },
  //             ),
  //           ],
  //         );
  //       });
  // }
//basedrawer
// ListTile(
//   title: const Text("Home"),
//   leading: const Icon(
//     Icons.home,
//     size: 20,
//   ),
//   selected: _selectedItem,
//   // selectedColor: Colors.orange,
//   // selectedTileColor: Colors.orange.shade200,
//   onTap: () {
//     setState(() {
//       _selectedIndex = 0;
//     });
//     _key.currentState!.closeDrawer();
//     //  Navigator.pop(context);
//   },
// ),
// ListTile(
//   title: const Text("Profile"),
//   leading: const Icon(
//     Icons.man,
//     size: 20,
//   ),
//   onTap: () {
//     setState(() {
//       _selectedIndex = 1;
//     });
//     Navigator.pop(context);
//   },
// ),
// ListTile(
//   title: const Text("Settings"),
//   leading: const Icon(
//     Icons.settings,
//     size: 20,
//   ),
//   onTap: () {
//     setState(() {
//       _selectedIndex = 2;
//     });
//     Navigator.pop(context);
//   },
// ),
// ListTile(
//   title: const Text("Help"),
//   leading: const Icon(
//     Icons.help,
//     size: 20,
//   ),
//   onTap: () {
//     setState(() {
//       _selectedIndex = 3;
//     });
//     Navigator.pop(context);
//   },
// ),
// ListTile(
//   title: const Text("Logout"),
//   leading: const Icon(
//     Icons.logout,
//     size: 20,
//   ),
//   onTap: () {
//     setState(() {
//       _selectedIndex = 4;
//     });
//     Navigator.pop(context);
//   },
// ),
//splash
// GestureDetector(
//   child: Text(
//     'Sign up',
//     style: TextStyle(
//       fontWeight: FontWeight.bold,
//       color: Colors.indigo.shade300,
//     ),
//   ),
//   onTap: () {
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (context) =>  Home(),
//       ),
//     );
//   },
// )
// SystemChrome.setSystemUIOverlayStyle(
//   const SystemUiOverlayStyle(
//     statusBarColor: Colors.transparent,
//   ),
// );
//debugShowCheckedModeBanner: false
//base
// drawer: SafeArea(
//   child: Drawer(
//     width: double.infinity,
//     // elevation: 16.0,
//     child: ListView(
//       // crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const UserAccountsDrawerHeader(
//             accountName: Text('Varun Kumar',style: TextStyle(color: Colors.black),),
//             accountEmail: Text('Varun816@outlook.com',style: TextStyle(color: Colors.black),),
//         currentAccountPicture: CircleAvatar(radius: 35.0,
//               backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRsfn65KCPAM6GNJZ4ZTsJOlFyoT_5BhlmwQ&usqp=CAU'),
//              backgroundColor: Colors.cyan,
//              child: Text("")),),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: const [
//           Text('CHATS',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 20,
//           ),),
//         ],),
//         SingleChildScrollView(
//           child: SizedBox(
//             width: double.infinity,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: const [
//                 Chats(charName: 'Mahesh S', professional: 'Flutter Develpers',
//                     imageUrl: 'https://images.pexels.com/photos/7465582/pexels-photo-7465582.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
//                 Chats(charName: 'Ashlesh', professional: 'Flutter Develpers',
//                     imageUrl: 'https://images.pexels.com/photos/1049622/pexels-photo-1049622.jpeg?auto=compress&cs=tinysrgb&w=400'),
//                 Chats(charName: 'Ankitha S', professional: 'Flutter Develpers',
//                     imageUrl: 'https://images.pexels.com/photos/932263/pexels-photo-932263.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
//                 Chats(charName: 'Ankitha R', professional: 'Flutter Develpers',
//                     imageUrl: 'https://images.pexels.com/photos/932261/pexels-photo-932261.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
//                 Chats(charName: 'Rithika', professional: 'Flutter Develpers',
//                     imageUrl: 'https://images.pexels.com/photos/368736/pexels-photo-368736.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
//                 Chats(charName: 'Varun', professional: 'Flutter Develpers',
//                     imageUrl: 'https://images.pexels.com/photos/10319442/pexels-photo-10319442.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
//                 Chats(charName: 'Bhargav', professional: 'Flutter Develpers',
//                     imageUrl: 'https://www.shutterstock.com/image-photo/davangere-karnataka-india-july-23-600w-2186723661.jpg'),
//                 Chats(charName: 'Vishwa', professional: 'Flutter Develpers',
//                     imageUrl: 'https://images.pexels.com/photos/981588/pexels-photo-981588.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
//                 Chats(charName: 'Sai P', professional: 'Flutter Develpers',
//                     imageUrl: 'https://images.pexels.com/photos/7715526/pexels-photo-7715526.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
//               ],
//             ),
//           ),
//         )
//       ],
//     ),
//   ),
// ),
// buildList(){
//
// }
// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     Row(
//       children: [
//         const Icon(Icons.lock_outline_rounded,color: Colors.black,),
//         const SizedBox(width: 5,),
//         _textUtils.bold18('Ana',Colors.black),
//         const Icon(Icons.keyboard_arrow_down,color: Colors.black,),
//       ],
//     ),
//     Row(
//       children: [
//         Image.asset('assets/icons/add_post.png',width: 20,height: 20,color: Colors.black,),
//         const SizedBox(width: 15,),
//         const Icon(Icons.menu,color: Colors.black,)
//       ],
//     ),
//   ],
// ),
//Row(
//   children: const [
//     Icon(Icons.video_call),
//
//     Icon(Icons.message),
//   ],
// )