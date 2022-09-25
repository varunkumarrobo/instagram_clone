import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'future demo',
      home: FutureBuilderexample(),
      debugShowCheckedModeBanner: false,
    );
  }
}
Future<String> getValue() async{
  await Future.delayed(const Duration(seconds:10 ));
  return 'Varun';
}
class FutureBuilderexample extends StatefulWidget {
  //const FutureBuilderexample({Key? key}) : super(key: key);

  @override
  State<FutureBuilderexample> createState() => _FutureBuilderexampleState();
}

class _FutureBuilderexampleState extends State<FutureBuilderexample> {
  late Future<String> _value;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _value = getValue();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: FutureBuilder<String>(
            future: _value,
              initialData: 'Loading',
              builder: (
              BuildContext context,
                  AsyncSnapshot<String> snapshot,
              ){
              if(snapshot.connectionState == ConnectionState.waiting){
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(),
                    Visibility(
                      visible: snapshot.hasData,
                        child:  Text(
                          snapshot.data.toString(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ),
                    ),
                  ],
                );
              }else if(snapshot.connectionState == ConnectionState.done){
                if(snapshot.hasError){
                  return const Text('Error');
                }else if(snapshot.hasData){
                  return Text(
                    snapshot.data.toString(),
                    style: const TextStyle(
                      color: Colors.teal,
                      fontSize: 36,
                    ),
                  );
                }else{
                  return const Text('Empty data');
                }
              } else{
                return Text('State: ${snapshot.connectionState}');
              }
              }),
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
//     var data = await http.get(Uri.https('https://jsonplaceholder.typicode.com/todos/1'));
//     var jsonData = json.decode(data.body);
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
//                   child: Text('Loading'),
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
// class User{
//   final int index;
//   final String about;
//   final String name;
//   final String email;
//   final String picture;
//
//   User(this.index,this.about,this.name,this.email,this.picture);
// }
//
//
