import 'package:flutter/material.dart';

import 'card_list.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Card(
            elevation: 4,
            margin: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer, // 画像を丸角にする
            child: Column(
              children: [
                // タイトル
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: const Text(
                    'タイトル',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                ),
                // 説明文
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: const Text(
                    'ここに説明文が入ります。ここに説明文が入ります。ここに説明文が入ります。ここに説明文が入ります。',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
                // 歩数
                const CardList(
                    icon: Icons.nordic_walking,
                    mainText: '歩数',
                    subText: 'ここに歩数が入ります。'),
                // 体重
                const CardList(
                    icon: Icons.accessibility_new_sharp,
                    mainText: '体重',
                    subText: 'ここに体重が入ります。'),
                // 目標
                const CardList(
                    icon: Icons.auto_awesome,
                    mainText: '目標',
                    subText: 'ここに目標が入ります。')
              ],
            ),
          )
        ],
      ),
    );
  }
}
