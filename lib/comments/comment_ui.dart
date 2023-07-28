import 'package:dd_studio_assignment/top_section/top_row.dart';
import 'package:dd_studio_assignment/user_interact_button.dart';
import 'package:flutter/material.dart';

class CommentUi extends StatelessWidget {
  Size size;
  String comment;
  bool hasReply;
  CommentUi(this.size, this.comment, this.hasReply, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TopRow(context, size, false, 'assets/images/avatar_image.png', hasReply),
        Container(
          margin: const EdgeInsets.fromLTRB(48, 8, 48, 0), // calculating margin with the factor of 4
          child: Text(comment, style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12),),
        ),
        Container(
          margin: const EdgeInsets.only(left: 24),
          child: InteractButton(true, hasReply),
        ),
      ],
    );
  }
}
