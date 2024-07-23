import 'package:flutter/material.dart';

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
                Container(
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
                        const Icon(
                          Icons.nordic_walking,
                          color: Colors.black45,
                          size: 24,
                        ),
                        const SizedBox(height: 8),
                        // タイトル
                        Text(
                          '歩数',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(height: 8),
                        // 説明文
                        Text(
                          'ここに歩数が入ります。',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // 体重
                Container(
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
                        const Icon(
                          Icons.accessibility_new_sharp,
                          color: Colors.black45,
                          size: 24,
                        ),
                        const SizedBox(height: 8),
                        // タイトル
                        Text(
                          '体重',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(height: 8),
                        // 説明文
                        Text(
                          'ここに体重が入ります。',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // 目標
                Container(
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
                        const Icon(
                          Icons.auto_awesome,
                          color: Colors.black45,
                          size: 24,
                        ),
                        const SizedBox(height: 8),
                        // タイトル
                        Text(
                          '目標',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(height: 8),
                        // 説明文
                        Text(
                          'ここに達成状況が入ります。',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
