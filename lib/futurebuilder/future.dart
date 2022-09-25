import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

Future<Album> fetchAlbum() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}
class Album{
  final int? userId;
  final int? id;
  final String title;

  const Album({
    required this.userId,required this.id,required this.title,
  });
  factory Album.fromJson(Map<String, dynamic> json){
    return Album(
      userId: json['userID'],
      id: json['id'],
      title: json['title'],);
  }
}
void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

Future<Album> futureAlbum() async {
  await Future.delayed(const Duration(seconds: 6));
  return futureAlbum();
}

class _MyAppState extends State<MyApp> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Users',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Users'),
          centerTitle: true,
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            //initialData: ,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text('${snapshot.data!.id} = ${snapshot.data!.title}');
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}

//
// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Future demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//  // String url = "http://www.json-generator.com/api/json/get/cfwZmvEBbC?indent=2";
//
//   Future<List<User>> _getUsers() async {
//     final response = await http
//         .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/'));
//     var jsonData = json.decode(response.body);
//     List<User> users = [];
//     for (var u in jsonData){
//       User user = User(u['index'], u['about'], u['name'],
//           u['email'], u['picture']);
//       users.add(user);
//     }
//     print(users.length);
//     return users;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Users'),
//       ),
//       body: Container(
//         child: FutureBuilder(
//           future: _getUsers(),
//             builder: (BuildContext context,
//                 AsyncSnapshot snapshot,){
//             print(snapshot.data);
//             if(snapshot.data == null){
//               return Container(
//                 child: const Center(
//                   child: Text('Loading...'),
//                 ),
//               );
//             }else{
//               return ListView.builder(
//                 itemCount: snapshot.data.lenght,
//                   itemBuilder: (BuildContext context,int index){
//                     return ListTile(
//                       title: Text(snapshot.data[index].name),
//                     );
//                   });
//             }
//             }),
//       ),
//     );
//   }
// }
// class DetailPage extends StatelessWidget {
//
//   final User user;
//
//   DetailPage(this.user);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(user.name),
//         )
//     );
//   }
// }
// class User{
//   final int index;
//   final String about;
//   final String name;
//   final String email;
//   final String picture;
//
//   User(this.index,this.about,this.name,this.email,this.picture);
// }


