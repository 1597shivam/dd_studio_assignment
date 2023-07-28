import 'package:flutter/material.dart';

class TagRow extends StatelessWidget {

  List<String> tags = ['2023', 'TODAYISMONDAY', 'TOP', 'POPS', 'WOW', 'ROW'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Wrap(
          spacing: 6.7,
          children: List.generate(tags.length, (index) => TagChip('#${tags[index]}'))
      ),
    );
  }
}

class TagChip extends StatelessWidget {
  final String tagText;
  const TagChip(this.tagText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 6, right: 10, bottom: 6),
      margin: const EdgeInsets.only(right: 4, left: 4, top: 4, bottom: 4),
      decoration: BoxDecoration(
        color: const Color(0xffF7F8FA),
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: const Color(0xFFCED3DE)),
      ),
      child: Text(
        tagText,
        style: const TextStyle(
          color: Color(0xff5A6B87),
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}