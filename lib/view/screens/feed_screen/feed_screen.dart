import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:magic_devs_task/config/assets.dart';
import 'package:magic_devs_task/config/colors.dart';
import 'package:magic_devs_task/config/enum.dart';
import 'package:magic_devs_task/data/models/feed_model/feed_model.dart';
import 'package:magic_devs_task/view/screens/feed_screen/bloc/feed_bloc.dart';
import 'package:magic_devs_task/view/screens/feed_screen/widgets/post_widget.dart';
import 'package:paginated_list/paginated_list.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedBloc, FeedState>(
      builder: (context, state) {
        final feedBlock = context.read<FeedBloc>();
        return Scaffold(
          appBar: AppBar(
            surfaceTintColor: Colors.transparent,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton<FeedFilter>(
                  padding: const EdgeInsets.only(left: 5),
                  alignment: Alignment.bottomLeft,
                  selectedItemBuilder: (context) {
                    return [
                      ...FeedFilter.values.map(
                        (e) => Center(
                            child: Text(
                          e.text,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.darkBlue),
                        )),
                      )
                    ];
                  },
                  underline: const SizedBox.shrink(),
                  icon: Padding(
                      padding: const EdgeInsets.only(bottom: 5, left: 13),
                      child: SvgPicture.asset(Assets.dropDownIcon)),
                  borderRadius: BorderRadius.circular(12),
                  value: state.filter,
                  items: FeedFilter.values.map((FeedFilter filter) {
                    bool isSelected = filter == state.filter;

                    return DropdownMenuItem<FeedFilter>(
                      value: filter,
                      child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: isSelected
                                  ? AppColors.appBlue
                                  : AppColors.silver),
                          child: Row(
                            children: [
                              Text(
                                filter.text,
                                style: TextStyle(
                                    fontSize: isSelected ? 17 : 15,
                                    fontWeight: isSelected
                                        ? FontWeight.w600
                                        : FontWeight.w400,
                                    color: isSelected
                                        ? Colors.white
                                        : AppColors.darkBlue),
                              ),
                            ],
                          )),
                    );
                  }).toList(),
                  onChanged: (FeedFilter? newFilter) {
                    if (newFilter != null) {
                      feedBlock.add(FeedEvent.changeFilter(newFilter));
                    }
                  },
                ),
                const Text(
                  'Insider feed',
                  style: TextStyle(
                      color: AppColors.darkBlue,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
                const Gap(35),
                IconButton(
                    onPressed: () {}, icon: SvgPicture.asset(Assets.filterIcon))
              ],
            ),
            centerTitle: true,
          ),
          body: PaginatedList<FeedModel>(
            loadingIndicator: const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: CircularProgressIndicator(color: Colors.black),
              ),
            ),
            shrinkWrap: true,
            isRecentSearch: state.isLastPage,
            items: state.feedReel,
            isLastPage: state.isLastPage,
            onLoadMore: (index) {
              feedBlock.add(FeedEvent.getFeed(offset: index, count: 5));
            },
            builder: (item, index) => Post(feed: state.feedReel[index]),
          ),
        );
      },
    );
  }
}
