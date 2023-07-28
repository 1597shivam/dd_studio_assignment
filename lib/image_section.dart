import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  Size size;
  ImageView(this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      child: Image.network('https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',
        height: size.height*0.37,
        width: size.width,
        fit: BoxFit.contain,
      ),
    );
  }
}
