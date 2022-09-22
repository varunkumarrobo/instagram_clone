import 'package:flutter/material.dart';

import '../utils/text_utils.dart';
import 'chats.dart';

class ChatsS extends StatefulWidget {
  const ChatsS({Key? key}) : super(key: key);

  @override
  State<ChatsS> createState() => _ChatsSState();
}

class _ChatsSState extends State<ChatsS> with SingleTickerProviderStateMixin{
  final TextUtils _textUtils = TextUtils();
  late TabController tabController;
  ScrollController scrollController = ScrollController();
  @override
  void initState(){
    super.initState();

    tabController = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: const IconThemeData.fallback(),
       backgroundColor: Colors.white,
       actions: [
         IconButton( icon: const Icon(Icons.video_call), onPressed: () {}),
         IconButton( icon: const Icon(Icons.message), onPressed: () {}),
         // Icon(Icons.),
       ],
       title:Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Row(
             children: [
               _textUtils.bold18('ana', Colors.black),
               const SizedBox(width: 5),
               const Icon(Icons.keyboard_arrow_down,size: 25),
             ],
           ),
         ],
       ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              TabBar(
                indicatorColor: Colors.black,
                indicatorWeight: 0.8,
                indicatorPadding: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                controller: tabController,
                tabs: const [
                  Tab(icon: Icon(Icons.grid_on_rounded,color: Colors.black,),),
                  Tab(icon: Icon(Icons.person_pin_outlined,color: Colors.black,),),
                ],
              ),
              Expanded(child: TabBarView(
                controller: tabController,
                children: [
                  GridView.count(controller: scrollController,
                    crossAxisCount: 3,
                    children: [
                      for(int i = 0; i < 11;i++)
                        Container(
                          margin: const EdgeInsets.only(right: 3,top: 3),
                          child: Image.asset('assets/images/dummy_post.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                    ],
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        for(int i = 1; i <= 15;i++)
                          Container(
                            margin: const EdgeInsets.only(right: 3,top: 3),
                            child:  Chats(charName: 'Mahesh S ${i}', professional: 'Flutter Develpers',
                                imageUrl: 'https://images.pexels.com/photos/7465582/pexels-photo-7465582.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                            // Image.asset('assets/images/dummy_post.jpg',
                            //   fit: BoxFit.cover,
                            // ),
                          ),
                        SizedBox(height: 115,)
                      ],
                    ),
                  ),
                ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  // Widget _tabSection(BuildContext context) {
  //   return DefaultTabController(
  //     length: 3,
  //     child: Column(
  //       //mainAxisSize: MainAxisSize.min,
  //       children: <Widget>[
  //          const TabBar(
  //             indicator: UnderlineTabIndicator(
  //                 borderSide: BorderSide(width: 2.0),
  //                 insets: EdgeInsets.symmetric(horizontal:15.0,vertical: 8.0),
  //             ),
  //             indicatorSize: TabBarIndicatorSize.tab,
  //             tabs: [
  //           Tab(child: Text("Chats",style: TextStyle(
  //             color: Colors.black,fontWeight: FontWeight.w800,
  //             fontSize: 15,
  //             letterSpacing: 1,
  //           ),),),
  //           Tab(child: Text("Calls",style: TextStyle(
  //             color: Colors.black,fontWeight: FontWeight.w800,
  //             fontSize: 15,
  //             letterSpacing: 1,
  //           ),),),
  //           Tab(child: Text("Requests",style: TextStyle(
  //             color: Colors.black,fontWeight: FontWeight.w800,
  //             fontSize: 15,
  //             letterSpacing: 1,
  //           ),),),
  //         ]),
  //         Column(
  //           children: [
  //             Container(
  //               //Add this to give height
  //               height: MediaQuery.of(context).size.height,
  //               child: const TabBarView(children: [
  //                 Chats(charName: 'Vishwa', professional: 'Flutter Develpers',
  //                     imageUrl: 'https://images.pexels.com/photos/981588/pexels-photo-981588.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
  //                 Chats(charName: 'Sai P', professional: 'Flutter Develpers',
  //                     imageUrl: 'https://images.pexels.com/photos/7715526/pexels-photo-7715526.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
  //                 Chats(charName: 'Sai P', professional: 'Flutter Develpers',
  //                     imageUrl: 'https://images.pexels.com/photos/7715526/pexels-photo-7715526.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
  //                 // Container(
  //                 //   child: Text("Home Body"),
  //                 // ),
  //                 // Container(
  //                 //   child: Text("Articles Body"),
  //                 // ),
  //                 // Container(
  //                 //   child: Text("User Body"),
  //                 // ),
  //               ]),
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
//_tabSection(context),
// const Chats(charName: 'Mahesh S', professional: 'Flutter Develpers',
//     imageUrl: 'https://images.pexels.com/photos/7465582/pexels-photo-7465582.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
// const Chats(charName: 'Ashlesh', professional: 'Flutter Develpers',
//     imageUrl: 'https://images.pexels.com/photos/1049622/pexels-photo-1049622.jpeg?auto=compress&cs=tinysrgb&w=400'),
// const Chats(charName: 'Ankitha S', professional: 'Flutter Develpers',
//     imageUrl: 'https://images.pexels.com/photos/932263/pexels-photo-932263.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
// const Chats(charName: 'Ankitha R', professional: 'Flutter Develpers',
//     imageUrl: 'https://images.pexels.com/photos/932261/pexels-photo-932261.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
// const Chats(charName: 'Rithika', professional: 'Flutter Develpers',
//     imageUrl: 'https://images.pexels.com/photos/368736/pexels-photo-368736.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
// const Chats(charName: 'Varun', professional: 'Flutter Develpers',
//     imageUrl: 'https://images.pexels.com/photos/10319442/pexels-photo-10319442.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
// const Chats(charName: 'Bhargav', professional: 'Flutter Develpers',
//     imageUrl: 'https://www.shutterstock.com/image-photo/davangere-karnataka-india-july-23-600w-2186723661.jpg'),
// const Chats(charName: 'Vishwa', professional: 'Flutter Develpers',
//     imageUrl: 'https://images.pexels.com/photos/981588/pexels-photo-981588.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
// const Chats(charName: 'Sai P', professional: 'Flutter Develpers',
//     imageUrl: 'https://images.pexels.com/photos/7715526/pexels-photo-7715526.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),