import 'package:code_healers_sih/resources/theme.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  String image;
  String number;
  String title;
  String subtitle;
   Appbar({
    required this.image,
    required this.number,
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: Stack(
            children: [
              Image.asset(
                image,
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Positioned(
                child: Text(
                 number,
                  style: AppTheme.getAppTheme().textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.end, 
            children: [
              Text(
                title,
                style: AppTheme.getAppTheme().textTheme.displayMedium,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 5),
              Text(
              subtitle,
                style: AppTheme.getAppTheme().textTheme.displaySmall,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
