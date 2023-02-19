import 'package:flutter/material.dart';
import 'package:music/audioPlayer.dart';

import '../homePage.dart';
class audios extends StatefulWidget {
      @override
      _audiosState createState() => _audiosState();
    }
    
    class _audiosState extends State<audios> {
      final List<String> entries = <String>[
        'Item 1',
        'Item 2',
        'Item 3',
        'Item 4',
        'Item 5',
        'Item 6',
        'Item 7',
        'Item 8',
        'Item 9',
        'Item 10',
        'Item 11',
        'Item 12',
        'Item 13',
        'Item 14',
        'Item 15'
      ];
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Color.fromARGB(255, 75, 70, 70),
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text(
              'Queue(17/457)',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.code),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>audio(),
                       // CodeScreen(code: Code.fractionallySizedBoxCode),
                  ),
                ),
              )
            ],
          ),
          body: SafeArea(
            child: ListView.separated(
              padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 8),
              itemCount: entries.length,
              reverse: false,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Color.fromARGB(255, 0, 0, 0),
                  child: ListTile(
                    leading: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 48,
                        height: 48,
                        padding: EdgeInsets.symmetric(vertical: 4.0),
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          child: Icon(Icons.music_note),
                          backgroundColor: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    trailing: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Chakdim",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "@ijodkoruz",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage() )),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) => Divider(
                thickness: 2,
              ),
            ),
          ),
        );
      }
    }