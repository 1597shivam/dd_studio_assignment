import 'package:flutter/material.dart';
class InteractButton extends StatelessWidget {
  bool interactInComment;
  bool hasReply;
  InteractButton(this.interactInComment, this.hasReply, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16,),
      child: Row(
        children: [
          const ImageIcon(AssetImage('assets/images/heart.png'), color: Color(0xffAFB9CA), size: 32,),
          const SizedBox(width: 2,),
          const Text('5', style: TextStyle(color: Color(0xff919EB6), fontSize: 12, fontWeight: FontWeight.w400),),
          const SizedBox(width: 12),
          hasReply?const Center(): const Row(
            children: [
              ImageIcon(AssetImage('assets/images/comment_icon.png'), color: Color(0xffAFB9CA), size: 32,),
              Text('5', style: TextStyle(color: Color(0xff919EB6), fontSize: 12, fontWeight: FontWeight.w400),),
            ],
          ), // it contains the comment icon and number. The visibility can be changed based on the comment position.
          interactInComment? const Center() :const Row(
            children: [
              SizedBox(width: 12),
              ImageIcon(AssetImage('assets/images/bookmark.png'), color: Color(0xffAFB9CA), size: 32,),
              SizedBox(width: 16),
              Icon(Icons.more_horiz, color: Color(0xffAFB9CA),)
            ],
          ) // visibility can be changed based on the position of this widget
        ],
      ),
    );
  }
}
