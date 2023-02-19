
import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  bool isPlaying =false;
  double value = 0;


  final player = AudioPlayer();

  Duration? duration = Duration(seconds: 0);

  void initPlayer() async {
    await player.setSource(AssetSource("1.mp3"));
    duration = await player.getDuration();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/3.png"),
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(
                color: Colors.black54,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "assets/images/3.png",
                  width: 250,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "music",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    letterSpacing: 6),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${(value /60).floor()}:${(value % 60).floor()}",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Slider.adaptive(
                      onChanged: (value) {},
                    min: 0,
                    max: duration!.inSeconds.toDouble(),
                    value: value,
                  onChangeEnd: (newValue) async{
                    setState(() {
                      value = newValue;
                      print(newValue);
                    });
                    player.pause();
                    await player.seek(Duration(seconds: newValue.toInt()));
                  },
                    activeColor: Colors.white,
                  ),
                  Text(
                    "${duration!.inMinutes} : ${duration!.inSeconds % 60}",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Colors.black,
                  border: Border.all(color: Colors.white)
                ),
                child: InkWell(
                  onTap: () async{
                    if(isPlaying){
                     await player.pause();
                    setState(() {
                       isPlaying = false;
                    });
                    }else{
                      await player.resume();
                      setState(() {
                         isPlaying = true;
                      });
                    player.onPositionChanged.listen((position) {
                      setState(() {
                        value = position.inSeconds.toDouble();
                      });
                    });
                   
                    } 
                  },
                  child: Icon(isPlaying?Icons.pause:Icons.play_arrow,color: Colors.white,),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
