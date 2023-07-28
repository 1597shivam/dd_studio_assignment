import 'package:flutter/material.dart';
import 'comment_ui.dart';

class CommentSection extends StatelessWidget {
  BuildContext context;
  Size size;
  String comment;
  bool hasReply;
  CommentSection(this.context, this.size, this.comment, this.hasReply, {Key? key}) : super(key: key);

  String commentReply = "오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다";

  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommentUi(size, comment, false),
        Container(
          margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: CommentUi(size, commentReply, hasReply),
        )
      ],
    );
  }
}
