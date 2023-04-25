import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContactInfo extends StatelessWidget {
  const CustomContactInfo({
    super.key,
    required this.phone,
    required this.location,
  });
  final String phone, location;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 16, bottom: 16),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
          color: Colors.grey[200]),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                color: Colors.black87,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                location,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black54),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              const Icon(
                CupertinoIcons.phone,
                color: Colors.black87,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                phone,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black54),
              )
            ],
          )
        ],
      ),
    );
  }
}
