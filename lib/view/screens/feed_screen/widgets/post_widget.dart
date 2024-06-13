import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:magic_devs_task/config/assets.dart';
import 'package:magic_devs_task/config/colors.dart';
import 'package:magic_devs_task/data/models/feed_model/feed_model.dart';
import 'package:magic_devs_task/view/widgets/report_dialog.dart';
import 'package:readmore/readmore.dart';

class Post extends StatelessWidget {
  final FeedModel feed;
  const Post({super.key, required this.feed});

  @override
  Widget build(BuildContext context) {
    DateTime createdAtDateTime =
        DateTime.fromMillisecondsSinceEpoch(feed.createdAt * 1000);
    DateTime updatedAtDateTime =
        DateTime.fromMillisecondsSinceEpoch(feed.updatedAt * 1000);

    DateTime now = DateTime.now();

    Duration createdAtDifference = now.difference(createdAtDateTime);
    Duration updatedAtDifference = now.difference(updatedAtDateTime);

    String formatDuration(Duration duration) {
      if (duration.inDays >= 365) {
        int years = (duration.inDays / 365).floor();
        return '$years year${years > 1 ? 's' : ''} ago';
      } else if (duration.inDays >= 30) {
        int months = (duration.inDays / 30).floor();
        return '$months month${months > 1 ? 's' : ''} ago';
      } else if (duration.inDays > 0) {
        return '${duration.inDays} day${duration.inDays > 1 ? 's' : ''} ago';
      } else if (duration.inHours > 0) {
        return '${duration.inHours} hour${duration.inHours > 1 ? 's' : ''} ago';
      } else if (duration.inMinutes > 0) {
        return '${duration.inMinutes} minute${duration.inMinutes > 1 ? 's' : ''} ago';
      } else {
        return 'just now';
      }
    }

    String displayTime() {
      if (updatedAtDateTime.isAfter(createdAtDateTime)) {
        return '${formatDuration(updatedAtDifference)} (edited)';
      } else {
        return formatDuration(createdAtDifference);
      }
    }

    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(feed.customer.image),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${feed.customer.firstName} ${feed.customer.lastName.substring(0, 1)} | ${feed.customer.department}',
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: AppColors.darkBlue,
                          fontSize: 14),
                    ),
                    const Gap(8),
                    Text(
                      displayTime(),
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.darkGray),
                    ),
                  ],
                ),
              ),
              PopupMenuButton(
                offset: const Offset(-50, 0),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: const InkWell(
                      child: Text('report !'),
                    ),
                    onTap: () => showDialog(
                        barrierColor: const Color(0x17305CB2).withOpacity(0.7),
                        context: context,
                        builder: (context) => BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                            child: const ReportDialog())),
                  )
                ],
                padding: const EdgeInsets.all(10),
                icon: SvgPicture.asset(Assets.moreIcon),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          if (feed.isAlert)
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffF1D7D7)),
              child: const Text(
                'Alert',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffCD716F)),
              ),
            ),
          const Gap(16),
          Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: [
              ...feed.interests.map((e) => Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      e.title,
                      style: const TextStyle(
                          color: AppColors.lightGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  )),
            ],
          ),
          const Gap(16),
          ReadMoreText(
            feed.caption,
            trimLines: 3,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'More',
            trimExpandedText: '\nClose',
            moreStyle: const TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.darkBlue),
            lessStyle: const TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.darkBlue),
            style: const TextStyle(
                color: AppColors.darkBlue,
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
          if (feed.images.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Image.network(feed.images.last.image),
            ),
          if (feed.videos.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(feed.videos.last.videoThumbnail),
                          fit: BoxFit.cover)),
                  child: Center(
                      child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_circle_rounded,
                      size: 100,
                      color: Colors.white,
                    ),
                  ))),
            ),
          const Divider(),
        ],
      ),
    );
  }
}
