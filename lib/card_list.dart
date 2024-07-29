import 'package:flutter/material.dart';

class CardList extends StatefulWidget {
  const CardList({
    super.key,
    required this.icon,
    required this.mainText,
    required this.subText,
  });

  final IconData icon;
  final String mainText;
  final String subText;

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.only(top: 30, bottom: 30),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            offset: Offset(-10, -10),
            color: Colors.white24,
          ),
          BoxShadow(
            blurRadius: 10,
            offset: Offset(10, 10),
            color: Colors.grey,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            // アイコン
            Icon(
              widget.icon,
              color: Colors.black45,
              size: 24,
            ),
            const SizedBox(height: 8),
            // タイトル
            Text(
              widget.mainText,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            // 説明文
            Text(
              widget.subText,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
