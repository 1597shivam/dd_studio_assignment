import 'package:flutter/material.dart';

import 'avatar_info.dart';

class TopRow extends StatelessWidget {
  BuildContext context;
  Size size;
  bool atTop; // to decide if it is at the top of the screen or in the comment section
  String imageUrl; // asset image here
  bool hasReply;
  TopRow(this.context, this.size, this.atTop, this.imageUrl, this.hasReply, {Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Container(
      height: size.height*0.038,
      width: size.width,
      margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Row(
        children: [
          AvatarAndInfo(size, atTop, imageUrl, '안녕 나 응애'),
          atTop?SizedBox(width: size.width*0.35):(hasReply?SizedBox(width: size.width*0.33,):SizedBox(width: size.width*0.36)),
          atTop?Container(
            height: size.height*0.029,
            width: size.width*0.15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xff01B99F)
            ),
            alignment: Alignment.center,
            child: const Text('팔로우', style: TextStyle(color: Colors.white),),
          ): const Icon(Icons.more_horiz, color: Color(0xffAFB9CA),)
        ],
      ),
    );
  }
}
