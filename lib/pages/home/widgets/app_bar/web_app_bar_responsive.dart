import 'package:flutter/material.dart';

class WebAppBarResponsive extends StatelessWidget {
  const WebAppBarResponsive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: LayoutBuilder(builder: (context, constraints) {
      print(
          'biggest: ${constraints.biggest} smallest: ${constraints.smallest}');
      return Row(
        children: [
          Expanded(
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 4),
                  IconButton(
                      icon: const Icon(Icons.search),
                      color: Colors.grey[500],
                      onPressed: () {}),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Pesquisar',
                        isCollapsed: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (constraints.maxWidth >= 400) ...[
            const SizedBox(width: 32),
            FlatButton(
              child: const Text('Aprender'),
              textColor: Colors.white,
              onPressed: () {},
            ),
          ],
          if (constraints.maxWidth >= 500) ...[
            const SizedBox(width: 8),
            FlatButton(
              child: const Text('Flutter'),
              textColor: Colors.white,
              onPressed: () {},
            )
          ]
        ],
      );
    }));
  }
}
