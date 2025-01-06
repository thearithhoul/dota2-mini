import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AttributeItemWidget extends StatefulWidget {
  final String image;
  final Size size;
  final bool isSelect;
  const AttributeItemWidget({
    super.key,
    this.isSelect = false,
    this.size = const Size(35, 35),
    required this.image,
  });

  @override
  State<AttributeItemWidget> createState() => _AttributeItemWidgetState();
}

class _AttributeItemWidgetState extends State<AttributeItemWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorShape;
  late Animation<Color?> _colorImage;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );

    _colorShape = ColorTween(
      begin: const Color(0xffD9D9D9),
      end: const Color(0xFFFFFFFF),
    ).animate(_controller);

    _colorImage = ColorTween(
      begin: const Color(0xff353D42),
      end: const Color(0xff31578C),
    ).animate(_controller);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant AttributeItemWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.isSelect != oldWidget.isSelect) {
      widget.isSelect ? _controller.forward() : _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height,
      width: widget.size.width,
      child: Stack(
        children: [
          AnimatedBuilder(
            animation: _colorShape,
            builder: (context, child) {
              return CustomPaint(
                willChange: true,
                size: widget.size, // Set the size of the canvas
                painter: MyCustomPainter(
                  color: _colorShape.value ?? const Color(0xffD9D9D9),
                ),
              );
            },
          ),
          Positioned(
              height: widget.size.height / 1.5,
              width: widget.size.width / 1.5,
              left: (widget.size.width / 1.5) / 2 - 2,
              top: (widget.size.height / 1.5) / 2 - 6,
              child: AnimatedBuilder(
                animation: _colorImage,
                builder: (context, child) {
                  return Image.asset(
                    widget.image,
                    fit: BoxFit.fill,
                    color: _colorImage.value ?? const Color(0xff353D42),
                  );
                },
              )),
        ],
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  final Color color;
  MyCustomPainter({
    required this.color,
  });
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color // Set the fill color of the shape
      ..style = PaintingStyle.fill;

    // Define the path for the shape
    final path = Path();

    // Start drawing the custom shape
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width + 10, size.height);
    path.lineTo(10, size.height);

    path.close(); // Close the path

    // Draw the path on the canvas
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
