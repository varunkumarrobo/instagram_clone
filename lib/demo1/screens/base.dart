import 'package:flutter/material.dart';
import 'package:instagram_clone/demo1/screens/profile_screen.dart';
import 'package:instagram_clone/demo1/screens/search.dart';
import 'package:instagram_clone/demo1/screens/home.dart';
import 'package:instagram_clone/demo1/screens/AddPost.dart';
import 'package:instagram_clone/demo1/screens/chats.dart';
import 'package:instagram_clone/demo1/utils/text_utils.dart';
import 'likes_screen.dart';

class Base extends StatefulWidget {
  const Base({Key? key}) : super(key: key);

  @override
  State<Base> createState() => _BaseState();
}
class _BaseState extends State<Base> {
  //final bool _selectedItem = true;
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final TextUtils _textUtils = TextUtils();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _key,
      appBar: showAppBar(),
      body: getBody(_selectedIndex),
      drawer: SafeArea(
        child: Drawer(
          width: double.infinity,
          // elevation: 16.0,
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UserAccountsDrawerHeader(
                  accountName: Text('Varun Kumar'),
                  accountEmail: Text('Varun816@outlook.com'),
              currentAccountPicture: CircleAvatar(radius: 35.0,
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRsfn65KCPAM6GNJZ4ZTsJOlFyoT_5BhlmwQ&usqp=CAU'),
                   backgroundColor: Colors.cyan,
                   child: Text("")),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                Text('CHATS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
              ],),
              SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Chats(charName: 'Mahesh S', professional: 'Flutter Develpers',
                          imageUrl: 'https://images.pexels.com/photos/7465582/pexels-photo-7465582.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                      Chats(charName: 'Ashlesh', professional: 'Flutter Develpers',
                          imageUrl: 'https://images.pexels.com/photos/1049622/pexels-photo-1049622.jpeg?auto=compress&cs=tinysrgb&w=400'),
                      Chats(charName: 'Ankitha S', professional: 'Flutter Develpers',
                          imageUrl: 'https://images.pexels.com/photos/932263/pexels-photo-932263.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                      Chats(charName: 'Ankitha R', professional: 'Flutter Develpers',
                          imageUrl: 'https://images.pexels.com/photos/932261/pexels-photo-932261.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                      Chats(charName: 'Rithika', professional: 'Flutter Develpers',
                          imageUrl: 'https://images.pexels.com/photos/368736/pexels-photo-368736.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                      Chats(charName: 'Varun', professional: 'Flutter Develpers',
                          imageUrl: 'https://images.pexels.com/photos/10319442/pexels-photo-10319442.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                      Chats(charName: 'Bhargav', professional: 'Flutter Develpers',
                          imageUrl: 'https://www.shutterstock.com/image-photo/davangere-karnataka-india-july-23-600w-2186723661.jpg'),
                      Chats(charName: 'Vishwa', professional: 'Flutter Develpers',
                          imageUrl: 'https://images.pexels.com/photos/981588/pexels-photo-981588.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                      Chats(charName: 'Sai P', professional: 'Flutter Develpers',
                          imageUrl: 'https://images.pexels.com/photos/7715526/pexels-photo-7715526.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        // unselectedLabelStyle: const TextStyle(color: Colors.black),
        currentIndex: _selectedIndex,
        fixedColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "Videos",
            icon: Icon(Icons.add),
          ),
          BottomNavigationBarItem(
            label: "Favorite",
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person_add),
          ),
        ],
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

   showAppBar() {
    switch (_selectedIndex){
      case 0:
        return AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: const Text(
            "INSTAGRAM",
            style: TextStyle(
              fontFamily: 'FontSpring',fontSize: 26,
              letterSpacing: 3,
              color: Colors.black,
            ),
          ),
          actions: [
            Padding(padding: const EdgeInsets.only(right: 10),
            child: Image.asset("assets/icons/messenger.png",
            color: Colors.black,
            width: 25,
            height: 25,
            ),
            ),
          ],
        );
      case 1:
      case 2:
        return AppBar(
          backgroundColor: Colors.white,
        );
      case 3:
        return AppBar(
          toolbarHeight: 0.0,
          backgroundColor: Colors.black,
        );
      case 4:
        return AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.lock_outline_rounded,color: Colors.black,),
                  const SizedBox(width: 5,),
                  _textUtils.bold18('Ana',Colors.black),
                  const Icon(Icons.keyboard_arrow_down,color: Colors.black,),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/icons/add_post.png',width: 20,height: 20,color: Colors.black,),
                  const SizedBox(width: 15,),
                  const Icon(Icons.menu,color: Colors.black,)
                ],
              )
            ],
          ),
        );
      default:
        return AppBar(
          toolbarHeight: 0.0,
        );
    }
  }
  }
getBody(int index) {
  switch (index) {
    case 0:
      return const Home();
    case 1:
      return const Search();
    case 2:
      return const AddPost();
    case 3:
      return const LikesScreen();
    case 4:
      return const Profile();
    default: return;
  }
}

