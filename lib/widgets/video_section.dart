import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
   VideoSection({super.key});
  //static data for videos
    final List videoList = [
      "Introduction to Flutter",
      'Installing Flutter on Window',
      'Setup Emulator on Window',
      'Creating Our First App'
    ];
   final List videoListMinute = [
     "20 mn 50 sec",
     '15 mn 45 sec',
     '18 mn 24 sec',
     '21 mn 28 sec'
   ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: videoList.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index){
          return ListTile(
            leading: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: index == 0 ? Color(0xFF674AEF) : Color(0xFF674AEF).withOpacity(0.6),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.play_arrow_rounded,
                color: Colors.white,
                size: 30,
              ),
            ),
            title: Text(videoList[index]),
            subtitle: Text(videoListMinute[index]),
          );
        },


    );
  }
}
