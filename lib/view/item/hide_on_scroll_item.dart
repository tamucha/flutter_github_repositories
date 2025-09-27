import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HideOnScrollItem extends HookWidget {
  final Widget child;
  final ScrollController controller;
  final double height;

  const HideOnScrollItem({
    required this.child,
    required this.controller,
    this.height = kBottomNavigationBarHeight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isVisible = useState(true);

    useEffect(() {
      void listener() {
        if (controller.position.userScrollDirection ==
            ScrollDirection.reverse) {
          // 下にスクロール
          isVisible.value = false;
        } else if (controller.position.userScrollDirection ==
            ScrollDirection.forward) {
          // 上にスクロール
          isVisible.value = true;
        }
      }

      controller.addListener(listener);

      return () {
        controller.removeListener(listener); // 破棄時に解放
      };
    }, [controller]);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: isVisible.value ? height : 0,
      child: Visibility(visible: isVisible.value, child: child),
    );
  }
}
