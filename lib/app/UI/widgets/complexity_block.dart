import 'package:flutter/material.dart';

class ComplexityBlockWidget extends StatefulWidget {
  final Size size;
  final bool isSelect;
  const ComplexityBlockWidget(
      {super.key, required this.size, required this.isSelect});

  @override
  State<ComplexityBlockWidget> createState() => _ComplexityBlockWidgetState();
}

class _ComplexityBlockWidgetState extends State<ComplexityBlockWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorShape;
  late Animation<Color?> _colorSubShape;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 100));

    _colorShape = ColorTween(
      begin: const Color(0xffD9D9D9),
      end: const Color(0xFFFFFFFF),
    ).animate(_controller);

    _colorSubShape =
        ColorTween(begin: const Color(0xff353D42), end: const Color(0xff31578C))
            .animate(_controller);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ComplexityBlockWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.isSelect != oldWidget.isSelect) {
      widget.isSelect ? _controller.forward() : _controller.reverse();
    }
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
            builder: (context, child) => CustomPaint(
              willChange: true,
              size: widget.size, // Set the size of the canvas
              painter: MyCustomPainter(
                color: _colorShape.value ?? const Color(0xff353D42),
              ),
            ),
          ),
          Positioned(
              height: widget.size.height / 1.5,
              width: widget.size.width / 1.5,
              left: (widget.size.width / 1.5) / 2 - 2,
              top: (widget.size.height / 1.5) / 2 - 6,
              child: AnimatedBuilder(
                animation: _colorSubShape,
                builder: (context, child) => CustomPaint(
                  willChange: true,
                  size: widget.size, // Set the size of the canvas
                  painter: MySubCustomPainter(
                    color: _colorSubShape.value ?? const Color(0xff353D42),
                  ),
                ),
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

class MySubCustomPainter extends CustomPainter {
  final Color color;

  MySubCustomPainter({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color // Set the fill color of the shape
      ..style = PaintingStyle.fill;

    // Define the path for the shape
    final path = Path();

    path.moveTo(size.width * 0.5, 0); // Move to top center
    path.lineTo(size.width, size.height * 0.5); // Line to bottom right
    path.lineTo(size.width * 0.5, size.height); // Line to bottom center
    path.lineTo(0, size.height * 0.5); // Line to bottom left
    path.close(); // Close the path

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
