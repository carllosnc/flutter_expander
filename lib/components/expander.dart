import 'package:flutter/material.dart';

class ExpansionCard extends StatefulWidget {
  final List<Widget> children;
  final double borderRadius;
  final Color? backgroundColor;
  final Color? titleColor;
  final String title;

  const ExpansionCard({
    super.key,
    required this.children,
    this.borderRadius = 10,
    this.backgroundColor,
    this.titleColor,
    this.title = 'Title',
  });

  @override
  State<ExpansionCard> createState() => _ExpansionCardState();
}

class _ExpansionCardState extends State<ExpansionCard>
    with SingleTickerProviderStateMixin {
  final Curve _curve = Curves.fastOutSlowIn;

  double _height = 0;
  double? _expandedHeight = 0;
  bool _isOpen = false;
  GlobalKey contentKey = GlobalKey();
  bool _loaded = false;
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _expandedHeight = contentKey.currentContext?.size?.height;

      setState(() {
        _height = 0;
        _loaded = true;
      });
    });

    super.initState();
  }

  toggleExpansion() {
    setState(() {
      if (_isOpen) {
        _height = 0;
        _isOpen = false;
        _animationController?.reverse();
      } else {
        _height = _expandedHeight!;
        _isOpen = true;
        _animationController?.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var backgroundColor =
        widget.backgroundColor ?? Theme.of(context).colorScheme.surfaceVariant;
    var titleColor =
        widget.titleColor ?? Theme.of(context).colorScheme.onSurfaceVariant;

    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)),
        color: backgroundColor,
      ),
      child: Wrap(
        children: [
          Material(
            color: backgroundColor,
            child: InkWell(
              onTap: toggleExpansion,
              child: Container(
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        widget.title,
                        overflow: TextOverflow.visible,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: titleColor),
                      ),
                    ),
                    RotationTransition(
                      turns: Tween(begin: 0.0, end: 0.25)
                          .animate(_animationController!),
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: widget.titleColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (!_loaded)
            Wrap(
              key: contentKey,
              children: widget.children,
            ),
          if (_loaded)
            AnimatedContainer(
              curve: _curve,
              duration: const Duration(milliseconds: 300),
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(),
              height: _height,
              width: double.infinity,
              child: Wrap(
                children: widget.children,
              ),
            ),
        ],
      ),
    );
  }
}
