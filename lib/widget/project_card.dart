import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/extensions/context_extensions.dart';

class PackageCard extends StatelessWidget {
  final String? banner;
  final int index;
  final String packageTitle;
  final String packageTime;
  final String freeTrial;
  final String packagePrice;
  final String packageDescription;
  final Color color;
  final Color borderColor;

  const PackageCard({
    Key? key,
    this.banner,
    this.color = Colors.transparent,
    this.borderColor = Colors.transparent,
    required this.index,
    this.packagePrice = '',
    this.packageTime = '',
    this.freeTrial = '',
    required this.packageTitle,
    required this.packageDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final index3 = index == 3;
    final index1 = index == 1;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: AppDimensions.normalize(120),
      height: AppDimensions.normalize(200),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: borderColor.withOpacity(0.8), width: 0.2),
        boxShadow: [
          BoxShadow(
              color: borderColor.withOpacity(0.4),
              blurRadius: 20,
              offset: const Offset(0, 15)),
          BoxShadow(
              color: borderColor.withOpacity(0.4),
              blurRadius: 13,
              offset: const Offset(0, 3))
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            packageTitle,
            textAlign: TextAlign.center,
            style: context.subHeadLine.copyWith(color: borderColor),
          ),
          context.mediumGap,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                packagePrice.toString(),
                textAlign: TextAlign.center,
                style: index3
                    ? AppText.h3!.copyWith(color: borderColor)
                    : AppText.h2!.copyWith(color: borderColor),
              ),
              context.mediumGap,
              if (!index3)
                Text(
                  packageTime,
                  textAlign: TextAlign.center,
                  style: context.subTitle.copyWith(color: borderColor),
                ),
            ],
          ),
          context.mediumGap,
          Text(
            packageDescription,
            textAlign: TextAlign.center,
            style: AppText.b2!.copyWith(color: borderColor),
          ),
          if (!index3) ...[
            // context.largeGap,
            // Text(
            //   freeTrial,
            //   textAlign: TextAlign.center,
            //   style: AppText.b2!.copyWith(
            //     color: ColorManager.greyText.withOpacity(0.5),
            //   ),
            // ),
          ] else ...[
            // const SizedBox(
            //   height: 20,
            // ),
            // Button(label: 'Send Your Email', onPressed: () {  },
            // )
          ]
        ],
      ),
    );
    //   InkWell(
    //   hoverColor: Colors.transparent,
    //   splashColor: Colors.transparent,
    //   highlightColor: Colors.transparent,
    //   onTap: packageLink == null
    //       ? () {}
    //       : () => openURL(
    //             packageLink!,
    //           ),
    //   onHover: (isHovering) {
    //     if (isHovering) {
    //       setState(() {
    //         isHover = true;
    //       });
    //     } else {
    //       setState(() {
    //         isHover = false;
    //       });
    //     }
    //   },
    //   child: Container(
    //     margin: Space.h,
    //     padding: Space.all(),
    //     width: AppDimensions.normalize(150),
    //     height: AppDimensions.normalize(90),
    //     decoration: BoxDecoration(
    //       color: appProvider.isDark ? Colors.grey[900] : Colors.white,
    //       borderRadius: BorderRadius.circular(10),
    //       boxShadow: isHover
    //           ? [
    //               BoxShadow(
    //                 color: AppTheme.c!.primary!.withAlpha(100),
    //                 blurRadius: 12.0,
    //                 offset: const Offset(0.0, 0.0),
    //               )
    //             ]
    //           : [
    //               BoxShadow(
    //                 color: Colors.black.withAlpha(100),
    //                 blurRadius: 12.0,
    //                 offset: const Offset(0.0, 0.0),
    //               )
    //             ],
    //     ),
    //     child: Stack(
    //       fit: StackFit.expand,
    //       children: [
    //         Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             packageIcon != null
    //                 ? (width > 1135 || width < 950)
    //                     ? Image.asset(
    //                         packageIcon!,
    //                         height: height * 0.05,
    //                       )
    //                     : Row(
    //                         mainAxisSize: MainAxisSize.min,
    //                         children: [
    //                           Image.asset(
    //                             packageIcon!,
    //                             height: height * 0.03,
    //                           ),
    //                           SizedBox(
    //                             width: width * 0.01,
    //                           ),
    //                           Text(
    //                             packageTitle,
    //                             style: AppText.b2b,
    //                             textAlign: TextAlign.center,
    //                           ),
    //                         ],
    //                       )
    //                 : Container(),
    //             packageIconData != null
    //                 ? Icon(
    //                     packageIconData,
    //                     color: AppTheme.c!.primary!,
    //                     size: height * 0.1,
    //                   )
    //                 : Container(),
    //             (width > 1135 || width < 950)
    //                 ? SizedBox(
    //                     height: height * 0.02,
    //                   )
    //                 : const SizedBox(),
    //             (width > 1135 || width < 950)
    //                 ? Text(
    //                     packageTitle,
    //                     style: AppText.b2b,
    //                     textAlign: TextAlign.center,
    //                   )
    //                 : Container(),
    //             SizedBox(
    //               height: height * 0.01,
    //             ),
    //             Text(
    //               packageDescription,
    //               textAlign: TextAlign.center,
    //             ),
    //             SizedBox(
    //               height: height * 0.01,
    //             ),
    //           ],
    //         ),
    //         AnimatedOpacity(
    //           duration: const Duration(milliseconds: 400),
    //           opacity: isHover ? 0.0 : 1.0,
    //           child: FittedBox(
    //             fit: BoxFit.fill,
    //             child: banner != null
    //                 ? Image.asset(
    //                     banner!,
    //                   )
    //                 : Container(),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
