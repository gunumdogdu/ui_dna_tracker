import 'package:flutter/material.dart';

class ProgressContainer extends StatelessWidget {
  const ProgressContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 16, bottom: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        color: Colors.grey[200],
      ),
      child: Row(
        children: [
          Text(
            'Progress 3/5',
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.black54),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: LinearProgressIndicator(
                value: 0.3,
                color: Color(0xFF0d64bf),
                valueColor: AlwaysStoppedAnimation<Color>(
                  0.3 < 1 ? Color(0xFFfe9d4c) : Color(0xFFfe9d4c),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
