import 'package:flutter/material.dart';
import 'package:music_player/consts/text_style.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ))
          ],
          leading: Icon(
            Icons.sort_rounded,
            color: Colors.white,
          ),
          title: Text(
            "Sar Player",
            style: ourStyle(),
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 100,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  margin: EdgeInsets.only(bottom: 4),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    tileColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    title: Text(
                      "Music Name",
                      style: ourStyle(size: 15),
                    ),
                    subtitle: Text(
                      "Artist Name",
                      style: ourStyle(size: 12),
                    ),
                    leading: const Icon(
                      Icons.music_note,
                      color: Colors.white,
                      size: 32,
                    ),
                    trailing: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 26,
                    ),
                  ));
            }),
      ),
    );
  }
}
