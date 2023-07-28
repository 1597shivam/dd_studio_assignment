import 'package:flutter/material.dart';

class AvatarAndInfo extends StatelessWidget {
  Size size;
  bool atTop;
  String avatarImage;
  String name;
  AvatarAndInfo(this.size, this.atTop, this.avatarImage, this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 38,
          width: 38,
          margin: const EdgeInsets.only(right: 5),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: const Color(0xffFFDCA9),
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(avatarImage)
              )
          ),
        ), // avatar
        SizedBox(
          height: size.height*0.038,
          width: size.width*0.314,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                        text: name,
                        style: const TextStyle(fontWeight: FontWeight.w900, color: Colors.black, fontSize: 14),
                      ),
                      const WidgetSpan(child: SizedBox(width: 4,),),
                      const WidgetSpan(
                        child: CircleAvatar(
                          radius: 7,
                          backgroundColor: Color(0xff01B99F),
                          child: Icon(Icons.check, size: 10, color: Colors.white,),
                        ),
                      ),
                      const WidgetSpan(child: SizedBox(width: 3,),),
                      const TextSpan(
                          text: '1일전',
                          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: Color(0xff919EB6))
                      )
                    ]
                ),
              ),
              atTop?const Row(
                children: [
                  Text('165cm', style: TextStyle(color: Color(0xff919EB6), fontSize: 12),),
                  SizedBox(width: 2,),
                  CircleAvatar(
                    radius: 1,
                    backgroundColor: Color(0xff919EB6),
                  ),
                  SizedBox(width: 2,),
                  Text('53kg', style: TextStyle(color: Color(0xff919EB6), fontSize: 12),),
                ],
              ): const Center()
            ],
          ),
        ), // name and other info
      ],
    );
  }
}