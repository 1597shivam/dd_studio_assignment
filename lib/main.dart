import 'package:dd_studio_assignment/comments/comment_box.dart';
import 'package:dd_studio_assignment/comments/comment_section.dart';
import 'package:dd_studio_assignment/image_section.dart';
import 'package:dd_studio_assignment/top_section/tags.dart';
import 'package:dd_studio_assignment/top_section/text_section.dart';
import 'package:dd_studio_assignment/top_section/top_row.dart';
import 'package:dd_studio_assignment/user_interact_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  String headComment = """
  어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 
우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도
아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다
괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니
꼭 봐주세용~!
  """;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('자유톡', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xff1D232B)),),
        leading: const Icon(Icons.arrow_back_ios, color: Color(0xff313B49),),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: const ImageIcon(AssetImage('assets/images/bell.png'), color: Color(0xffAFB9CA), size: 24,),
          )
        ],
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              TopRow(context, size, true, 'assets/images/avatar_image.png', false),
              HeadingAndNormalText(context, size),
              TagRow(),
              const SizedBox(height: 10,),
              ImageView(size),
              InteractButton(false, false),
              const Divider(
                height: 2,
                color: Color(0xffF7F8FA),
              ),
              CommentSection(context, size, headComment, true),
              const Divider(
                height: 2,
                color: Color(0xffF7F8FA),
              ),
              CommentBox(size)
            ],
          ),
        ),
      )
    );
  }
}

