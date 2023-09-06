import 'package:flutter/material.dart';
import 'package:music_play/new_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:25.0),
          child: Column(
            children: [
            const SizedBox(height:25),
            //back button and menu button
           const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              SizedBox(
                height: 60,
                width: 60,
                child: NewBox(child: Icon(Icons.arrow_back)),
              ),
        
              Text('P L A Y L I S T'),
              SizedBox(
                height: 60,
                width: 60,
                child: NewBox(child: Icon(Icons.menu)),
              ),
              
        
            ],
        
        
            ),

            const SizedBox(height: 40),

            // cover art, artist name and song name
            NewBox(
              child: Column(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                   child: Image.asset('lib/images/cover_art.jpg',
                   height: 300),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           const Text('Kota The Friend',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                              ),
                            const SizedBox(height: 6),
                            Text('Birdie',
                             style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.grey.shade700),
                              ),
                                  
                        ],
                       ),
                       const Icon(Icons.favorite,
                       color: Colors.red,
                       size:32),
                     ],

                    ),
                  )
              ],)
            ),
             const SizedBox(height:30),
            //start time/shuffle button,repeat button and end time
             const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('0:00'),
                Icon(Icons.shuffle),
                Icon(Icons.repeat),
                Text('4:22')

              ],
            ),

            const SizedBox(height:40),

            // linear bar,
            NewBox(
              child: LinearPercentIndicator(
                lineHeight: 10,
                percent: 0.8,
                progressColor: Colors.green,
                backgroundColor: Colors.transparent,
              ),
            ),
            const SizedBox(height:40),
              
            // previous song/pulse song / skip next song
            const  SizedBox(
              height: 80,
               child: Row(
                children: [
                  Expanded(
                    child: NewBox(child: Icon(Icons.skip_previous)),
                    ),
                 Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal:20.0),
                      child: NewBox(child: Icon(Icons.play_arrow)),
                    ),
                    ),
                 Expanded(
                    child: NewBox(child: Icon(Icons.skip_next)),
                    ),
                ],
             
              ),
             ),
          ],),
        ),
      )


    );
  }
}