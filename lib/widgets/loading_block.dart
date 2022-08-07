import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingBlock extends StatelessWidget {
  final double? width;
  final double? height;
  final double? marginLeft;
  final double? marginRight;
  final double? marginTop;
  final double? marginBottom;

  const LoadingBlock({
    Key? key,
    this.width,
    this.height,
    this.marginLeft,
    this.marginRight,
    this.marginTop,
    this.marginBottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[200]!,
        child: SizedBox(
          child: Container(
            margin: EdgeInsets.only(bottom: marginBottom ?? 0, top: marginTop ?? 0, left:  marginLeft ?? 0 , right: marginRight ?? 0),
            color: Colors.white,
            height: height ?? 10,
            width: width ?? 100,
          ),
        ));
  }
}

