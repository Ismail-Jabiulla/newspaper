import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newspaper/constants/fonts_widgets.dart';
import 'package:newspaper/constants/image_strings.dart';
import 'package:newspaper/podcast/podcast_screen.dart';

class PosdcastPlayer extends StatefulWidget {
  const PosdcastPlayer({super.key});

  @override
  State<PosdcastPlayer> createState() => _PosdcastPlayerState();
}

class _PosdcastPlayerState extends State<PosdcastPlayer> {
  double _currentSliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppTitle', style:GoogleFonts.inter(fontSize: 16,fontWeight: FontWeights.Bold),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.more_horiz),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          SizedBox(height: 20,),
          Center(
            child: Container(
              height: 400,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(appImages.podcastImage01),
                  fit: BoxFit.cover,
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text('Biden and Zelensky are set to meet', style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeights.Bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text('NATO Summit'),
          ),
          ///------play space-------
         Padding(
           padding: const EdgeInsets.only(top: 16.0, left: 16,right: 16),
           child: SliderTheme(
             data: SliderTheme.of(context).copyWith(
               trackHeight: 8.0,
               thumbColor: Colors.black,
               activeTrackColor: Colors.black87,
               inactiveTrackColor: Colors.grey
             ),
             child: Slider(
                 min: 0,
                 max: 100,
                 divisions: 180,
                 value: _currentSliderValue, onChanged: (value){
               setState(() {
                 _currentSliderValue = value;
               });
             }),
           ),
         ),
          Text(
            '${_currentSliderValue.toInt() ~/ 60}:${(_currentSliderValue.toInt() % 60).toString().padLeft(2, '0')}',
            style: TextStyle(fontSize: 18.0),
          ),

          ///-----------backWord, Forword tools----------
          Padding(
            padding: const EdgeInsets.only(top: 32.0, left: 32.0,right: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:[
                IconButton(onPressed: (){}, icon: Icon(Icons.shuffle, size: 24,)),
                IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back_ios, size: 24,)),
                IconButton(onPressed: (){},icon: Icon(Icons.play_circle_outline_sharp, size: 60, color: Colors.black87,)),
                IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios, size: 24,)),
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PodcastScreen()));
                },icon: Icon(Icons.list, size: 24,)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
