import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        children: [
          Row(
            children: [
              Container(),
              const Text('ChatGPT'),
              const Spacer(),
              const Icon(Icons.add)
            ],
          ),
          //area scrollabile in mezzo alla prima e all'ultima Row
          Expanded(
            child: ListView(),
          ),
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                margin: const EdgeInsets.only(left: 8),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://www.mrnmrspet.com/Files/82023/47207202308111026030516.jpeg',
                    ),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
