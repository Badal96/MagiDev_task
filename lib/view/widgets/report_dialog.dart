import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:magic_devs_task/config/assets.dart';
import 'package:magic_devs_task/config/colors.dart';

class ReportDialog extends StatefulWidget {
  const ReportDialog({super.key});

  @override
  State<ReportDialog> createState() => _ReportDialogState();
}

class _ReportDialogState extends State<ReportDialog> {
  bool loading = false;
  bool isReported = false;

  void report(BuildContext context) async {
    setState(() {
      loading = true;
    });
    await Future.delayed(const Duration(milliseconds: 3000));

    if (context.mounted) {
      loading = false;
      isReported = true;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      child: isReported ? _reportedDialog() : _confirmDialog(),
    );
  }

  Widget _reportedDialog() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
      width: 334,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.confirmed),
          const Gap(24),
          const Text(
            'You have reported this post',
            style: TextStyle(
                color: AppColors.darkBlue,
                fontSize: 19,
                fontWeight: FontWeight.w600),
          ),
          const Gap(24),
          SizedBox(
              width: double.infinity,
              height: 54,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.darkBlue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4))),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'OK',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )))
        ],
      ),
    );
  }

  Widget _confirmDialog() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
      width: 334,
      child: loading == true
          ? const SizedBox(
              height: 300,
              width: double.infinity,
              child: Center(child: CircularProgressIndicator()))
          : Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.warning),
                const Gap(24),
                const Text(
                  'Are you sure you want \n to report this post? ',
                  style: TextStyle(
                      color: AppColors.darkBlue,
                      fontSize: 19,
                      fontWeight: FontWeight.w600),
                ),
                const Gap(24),
                SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            color: Color(0xffFF6D55), width: 1),
                        backgroundColor: const Color(0xffF1F1F1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      onPressed: () {
                        report(context);
                        loading == false;
                        setState(() {});
                      },
                      child: const Text(
                        'Yes',
                        style: TextStyle(
                            color: Color(0xffFF6D55),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    )),
                const Gap(16),
                SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.darkBlue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4))),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'No, go back',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        )))
              ],
            ),
    );
  }
}
