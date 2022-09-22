import 'package:flutter/material.dart';
import 'package:instagram_clone/demo1/utils/text_utils.dart';
import 'package:instagram_clone/demo1/widgets/post_view_widget.dart';
import 'package:instagram_clone/demo1/widgets/story_view_widget.dart';

import 'chats.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final TextUtils _textUtils = TextUtils();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.only(left: 10,right: 10),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for(int i = 0; i<20; i++)
                    Container(
                      width: 70,
                      margin: const EdgeInsets.only(right: 15),
                      child: Column(
                        children: [
                          const StoryViewWidget(),
                          const SizedBox(height: 10,),
                          _textUtils.normal14Ellipsis('Annnnnnnaaaa', Colors.black),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            for(int i = 0; i < 10; i++)
              const PostViewWidget(),
          ],
        ),
      ),
      // drawer:SafeArea(
      //     child: Drawer(
      //       width: double.infinity,
      //       // elevation: 16.0,
      //       child: ListView(
      //         // crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           const UserAccountsDrawerHeader(
      //             accountName: Text('Varun Kumar',style: TextStyle(color: Colors.black),),
      //             accountEmail: Text('Varun816@outlook.com',style: TextStyle(color: Colors.black),),
      //             currentAccountPicture: CircleAvatar(radius: 35.0,
      //                 backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRsfn65KCPAM6GNJZ4ZTsJOlFyoT_5BhlmwQ&usqp=CAU'),
      //                 backgroundColor: Colors.cyan,
      //                 child: Text("")),),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //             children: const [
      //               Text('CHATS',
      //                 style: TextStyle(
      //                   fontWeight: FontWeight.bold,
      //                   fontSize: 20,
      //                 ),),
      //             ],),
      //           SingleChildScrollView(
      //             child: SizedBox(
      //               width: double.infinity,
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: const [
      //                   Chats(charName: 'Mahesh S', professional: 'Flutter Develpers',
      //                       imageUrl: 'https://images.pexels.com/photos/7465582/pexels-photo-7465582.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
      //                   Chats(charName: 'Ashlesh', professional: 'Flutter Develpers',
      //                       imageUrl: 'https://images.pexels.com/photos/1049622/pexels-photo-1049622.jpeg?auto=compress&cs=tinysrgb&w=400'),
      //                   Chats(charName: 'Ankitha S', professional: 'Flutter Develpers',
      //                       imageUrl: 'https://images.pexels.com/photos/932263/pexels-photo-932263.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
      //                   Chats(charName: 'Ankitha R', professional: 'Flutter Develpers',
      //                       imageUrl: 'https://images.pexels.com/photos/932261/pexels-photo-932261.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
      //                   Chats(charName: 'Rithika', professional: 'Flutter Develpers',
      //                       imageUrl: 'https://images.pexels.com/photos/368736/pexels-photo-368736.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
      //                   Chats(charName: 'Varun', professional: 'Flutter Develpers',
      //                       imageUrl: 'https://images.pexels.com/photos/10319442/pexels-photo-10319442.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
      //                   Chats(charName: 'Bhargav', professional: 'Flutter Develpers',
      //                       imageUrl: 'https://www.shutterstock.com/image-photo/davangere-karnataka-india-july-23-600w-2186723661.jpg'),
      //                   Chats(charName: 'Vishwa', professional: 'Flutter Develpers',
      //                       imageUrl: 'https://images.pexels.com/photos/981588/pexels-photo-981588.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
      //                   Chats(charName: 'Sai P', professional: 'Flutter Develpers',
      //                       imageUrl: 'https://images.pexels.com/photos/7715526/pexels-photo-7715526.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
      //                 ],
      //               ),
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //   ),
    );
  }
}
