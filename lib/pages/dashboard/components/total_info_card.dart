import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kstmis/styles/constants.dart';

import 'cloud_storage_info.dart';

class TotalInfoCard extends StatelessWidget {
  const TotalInfoCard({Key? key, required this.info}) : super(key: key);

  final ProductStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                info.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: info.color.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: SvgPicture.asset(
                  info.svgSrc,
                  color: info.color,
                ),
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${info.total} Total",
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}

