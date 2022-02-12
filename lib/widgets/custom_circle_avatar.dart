import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({Key? key, String? photo})
      : _photo = photo,
        super(key: key);

  final String? _photo;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey.shade700,
      foregroundImage: (_photo == null) ? null : NetworkImage(_photo!),
      radius: 35,
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
