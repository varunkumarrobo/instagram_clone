import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats(
      {required this.charName,
        required this.professional,
        required this.imageUrl,
        Key? key})
      : super(key: key);
  final String? charName;
  final String? professional;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      margin: const EdgeInsets.only(top: 10),
      color: Colors.white,
      child: SizedBox(
        //height: 80,
        //  padding: const EdgeInsets.all(1),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            CircleAvatar(
              backgroundImage: NetworkImage("$imageUrl"),
              radius: 30,
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$charName',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    // Text(
                    //   '$professional',
                    //   style: const TextStyle(
                    //       fontWeight: FontWeight.bold, color: Colors.black54),
                    // ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 25, child: Icon(Icons.camera_alt_rounded),),
            const SizedBox(width: 15,)
          ],
        ),
      ),
    );
  }
}