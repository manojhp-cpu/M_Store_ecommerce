import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'curved_edges.dart';

class MCurvedEdgesWidget extends StatelessWidget {
  const MCurvedEdgesWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MCustomCurvedEdges(),
      child:child,
    );
  }
}