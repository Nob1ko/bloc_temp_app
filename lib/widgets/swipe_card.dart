import 'package:flutter/material.dart';

class SwipeCard extends StatefulWidget {
  const SwipeCard({super.key});

  @override
  State<SwipeCard> createState() => _SwipeCardState();
}

class _SwipeCardState extends State<SwipeCard> {
  final PageController _controller = PageController(viewportFraction: 0.8);
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100, // Card height
        child: PageView.builder(
          itemCount: 10,
          controller: _controller,
          itemBuilder: (context, index) {
            return ListenableBuilder(
              listenable: _controller,
              builder: (context, child) {
                double factor = 1;
                if (_controller.position.hasContentDimensions) {
                  factor = 1 - (_controller.page! - index).abs();
                }

                return Center(
                  child: SizedBox(
                    height: 70 + (factor * 30),
                    child: Card(
                      elevation: 4,
                      child: Center(child: Text('Card $index')),
                    ),
                  ),
                );
              },
            );
          },
        ),
    );
  }
}