import 'package:flutter/material.dart';

class ATapCard extends StatelessWidget {
  const ATapCard({ this.child, this.color, this.onTap });

  final Widget child;
  final Color color;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ACard(
        child: this.child,
        color: color,
      ),
    );
  }
}

class ACard extends StatelessWidget {
  ACard({ this.child, this.color = Colors.white, this.elevation = 4.0 });

  final Widget child;
  final Color color;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: child,
      elevation: elevation,
    );
  }
}