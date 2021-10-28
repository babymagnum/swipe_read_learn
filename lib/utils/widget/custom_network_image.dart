import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNetworkImage extends StatelessWidget {

  CustomNetworkImage({Key? key, this.errorImage, required this.url, required this.size,
    required this.borderRadius, required this.boxFit, this.onlyTopLeftRight = false, this.onlyTopLeftBottom = false, this.onlyTopBottomRight = false}): super (key: key);

  final String url;
  final Size size;
  final double borderRadius;
  final BoxFit boxFit;
  final Widget? errorImage;
  final bool onlyTopLeftRight;
  final bool onlyTopLeftBottom;
  final bool onlyTopBottomRight;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: onlyTopLeftRight ?
      BorderRadius.only(topLeft: Radius.circular(borderRadius), topRight: Radius.circular(borderRadius)) :
      onlyTopLeftBottom ?
      BorderRadius.only(topLeft: Radius.circular(borderRadius), bottomLeft: Radius.circular(borderRadius)) :
      onlyTopBottomRight ?
      BorderRadius.only(topRight: Radius.circular(borderRadius), bottomRight: Radius.circular(borderRadius)) :
      BorderRadius.all(Radius.circular(borderRadius)),
      child: CachedNetworkImage(
        imageBuilder: (context, imageProvider) => Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: boxFit,
            ),
          ),
        ),
        imageUrl: url,
        errorWidget: (context, _, __) => errorImage ?? Container(
          width: size.width,
          height: size.height,
          color: Colors.grey.withOpacity(0.35),
        ),
        placeholder: (context, _) => Container(
          width: size.width,
          height: size.height,
          color: Colors.grey.withOpacity(0.35),
        ),
      ),
    );
  }
}
