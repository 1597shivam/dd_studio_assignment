import 'package:flutter/material.dart';

class CommentBox extends StatelessWidget {
  Size size;
  CommentBox(this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 16, bottom: 16),
      child: Row(
        children: [
          const ImageIcon(AssetImage('assets/images/imageAttach.png'), color: Color(0xff919EB6),),
          SizedBox(width: size.width*0.08,),
          const Text('댓글을 남겨주세요.', style: TextStyle(color: Color(0xffAFB9CA)),), // can be replaced with TextField
          SizedBox(width: size.width*0.43,),
          const Text('등록', style: TextStyle(color: Color(0xffAFB9CA)),),
        ],
      ),
    );
  }
}
