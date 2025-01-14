import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stroll/presentation/components/profile_picture.dart';
import 'package:stroll/presentation/components/widgets/icon_text.dart';
import 'package:stroll/presentation/components/widgets/my_list_tile.dart';
import 'package:stroll/presentation/components/widgets/outlined_text.dart';
import 'package:stroll/utils/extensions/widget_extensions.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).colorScheme.secondaryFixed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              'assets/svg/card.svg',
              width: 28.r,
              height: 28.r,
            ),
            SvgPicture.asset('assets/svg/bonfire.svg',
                width: 28.r, height: 28.r),
            SvgPicture.asset('assets/svg/chat.svg', width: 28.r, height: 28.r),
            SvgPicture.asset('assets/svg/profile.svg',
                width: 28.r, height: 28.r),
          ],
        ).pSymmetric(horizontal: 16.w, vertical: 10.h),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          // background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/background_img.png',
              fit: BoxFit.cover,
            ),
          ),

          // fade
          Positioned.fill(
            child: Image.asset(
              'assets/images/fade.png',
              fit: BoxFit.cover,
            ),
          ),

          Positioned.fill(
            child: Column(
              children: [
                SafeArea(
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      OutlinedText(
                        "Stroll Bonfire",
                        strokeWidth: 0.32.r,
                      ),

                      // Arrow Drop down
                      SvgPicture.asset('assets/svg/arrow_drop_down.svg')
                    ],
                  ).pOnly(top: 15.h),
                ),

                SizedBox(
                  height: 2.h,
                ),

                // Icon texts
                Wrap(
                  spacing: 10.w,
                  children: [
                    IconText(
                      icon: SvgPicture.asset('assets/svg/timer.svg'),
                      text: '22h 00m',
                    ),
                    IconText(
                      icon: SvgPicture.asset('assets/svg/profile_small.svg'),
                      text: '103',
                    )
                  ],
                )
              ],
            ),
          ),

          // content
          Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyListTile(
                leading: ProfilePicture(
                  size: 50.r,
                  url:
                      'https://res.cloudinary.com/extelvogroup/image/upload/v1736868499/stroll/cnyynych8sdfw9dfsdmx.png',
                ),
                title: Text(
                  'Angelina, 28',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'What is your favorite time of the day?',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
              ).pSymmetric(),

              SizedBox(
                height: 9.h,
              ),

              // My Answer
              Text(
                '“Mine is definitely the peace in the morning.”',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .tertiaryFixed
                          .withValues(alpha: 0.7),
                      fontStyle: FontStyle.italic,
                    ),
              ),

              // Options
              // setting [shrinkWrap] to true is not performant if we have
              // a large amount of data. But it's fine in this case since we
              // only have 4 widgets to render
              GridView.builder(
                shrinkWrap: true,
                itemCount: 4,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12.r,
                  crossAxisSpacing: 12.r,
                  childAspectRatio: 166 / 67,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    // height: 57.h,
                    // color: Color(0xFF232A2E),
                    padding: EdgeInsets.symmetric(horizontal: 10.w),

                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(12.r),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 8,
                              color: Theme.of(context)
                                  .colorScheme
                                  .surface
                                  .withValues(alpha: 0.3))
                        ]),

                    child: MyListTile(
                      leading: Container(
                        padding: EdgeInsets.all(6.r),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                              color: Theme.of(context).colorScheme.onSecondary,
                            )),
                        child: Text(
                          'A',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      title: Text(
                        'The peace in the early mornings',
                      ),
                    ),
                  );
                },
              ).pSymmetric(),

              SizedBox(
                height: 11.h,
              ),

              // pick option
              Row(
                children: [
                  Expanded(
                    child:
                        Text('Pick your option.\nSee who has a similar mind'),
                  ),
                  SvgPicture.asset(
                    'assets/svg/mic.svg',
                    width: 48.r,
                    height: 48.r,
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  SvgPicture.asset(
                    'assets/svg/right_arrow.svg',
                    width: 48.r,
                    height: 48.r,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ).pSymmetric(),

              SizedBox(
                height: 10.h,
              )
            ],
          ))
        ],
      ),
    );
  }
}
