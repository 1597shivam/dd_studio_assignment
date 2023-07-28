import 'package:flutter/material.dart';

class HeadingAndNormalText extends StatelessWidget {
  BuildContext context;
  Size size;
  HeadingAndNormalText(this.context, this.size, {Key? key}) : super(key: key);

  double getGapSize(context) {
    double screenHeight = size.height;
    return screenHeight * 0.02;
  }
  double getTextSize(context, double baseFontSize) {
    double width = size.width;
    return width * baseFontSize / 100;
  }
  String normalText = """
  지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~
혹시 어떤 상품이 제일 괜찮았어? 

후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 
제일 재밌었다던데 맞아???

올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가
아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에
있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!
  """;

  @override
  Widget build(context) {
    double headingFontSize = getTextSize(context, 5);
    double normalFontSize = getTextSize(context, 3.5);
    return Container(
      margin: const EdgeInsets.only(top: 16, right: 16, left: 16),
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?',
            style: TextStyle(
                fontSize: headingFontSize,
                fontWeight: FontWeight.w700,
                color: const Color(0xff1D232B)
            ),
          ),
          SizedBox(height: getGapSize(context)),
          Text(
            normalText,
            style: TextStyle(
                fontSize: normalFontSize,
                fontWeight: FontWeight.w500,
                color: const Color(0xff1D232B)
            ),
          ),
        ],
      ),
    );
  }
}