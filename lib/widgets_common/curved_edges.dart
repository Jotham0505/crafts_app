import 'package:craftplate/widgets_common/custom_curved_widget.dart';
import 'package:flutter/material.dart';

class TCurvedEdgeswidget extends StatelessWidget {
  const TCurvedEdgeswidget({
    super.key, this.child,
  });

  final Widget ? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child
    );
  }
}