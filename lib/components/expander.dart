import 'package:flutter/material.dart';

class Expander extends StatefulWidget {
  final List<Widget> children;
  final String title;

  const Expander({
    super.key,
    required this.children,
    required this.title,
  });

  @override
  State<Expander> createState() => _ExpanderState();
}

class _ExpanderState extends State<Expander> with TickerProviderStateMixin {
  final GlobalKey _contentKey = GlobalKey();
  double _height = 0;
  double? _expandedHeight = 0;
  bool _isOpen = false;
  bool _isLoaded = false;
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _expandedHeight = _contentKey.currentContext?.size?.height;

      setState(() {
        _height = 0;
        _isLoaded = true;
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
    var backgroundColor = Theme.of(context).colorScheme.surfaceVariant;
    var titleColor = Theme.of(context).colorScheme.onBackground;

    return Container(
      key: const Key('expander_container'),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: backgroundColor,
      ),
      child: Wrap(
        children: [
          Material(
            color: backgroundColor,
            child: InkWell(
              key: const Key('expander_header'),
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
                            .titleSmall
                            ?.copyWith(color: titleColor),
                      ),
                    ),
                    RotationTransition(
                      turns: Tween(begin: 0.0, end: 0.25)
                          .animate(_animationController!),
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: titleColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (!_isLoaded)
            Wrap(
              key: _contentKey,
              children: widget.children,
            ),
          if (_isLoaded)
            AnimatedContainer(
              key: const Key('expander_content'),
              curve: Curves.fastOutSlowIn,
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
