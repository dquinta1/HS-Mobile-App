import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({Key? key, String? photo, double? radius = 35})
      : _photo = photo,
        _radius = radius,
        super(key: key);

  final String? _photo;
  final double? _radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey.shade700,
      foregroundImage: (_photo == null) ? null : NetworkImage(_photo!),
      radius: _radius,
      child: (_photo == null)
          ? const Icon(
              Icons.person,
              color: Colors.black38,
              size: 50,
            )
          : null,
    );
  }
}
