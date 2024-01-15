import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';

class PostWidget extends StatefulWidget {
  final String name;
  final String userName;
  final String postText;
  final String hashTag;
  final Widget? postWidget;

  const PostWidget({
    Key? key,
    required this.name,
    required this.userName,
    required this.hashTag,
    required this.postText,
    this.postWidget,
  }) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool isLiked = false;
  bool isDisliked = false;
  bool isCommented = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  void toggleDislike() {
    setState(() {
      isDisliked = !isDisliked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        'assets/home-icons/author-avatar.png',
                      )),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFF06C270),
                  )),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      widget.name,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: kWhite),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset(
                      'assets/common-icons/verify.svg',
                      height: 16,
                      width: 16,
                    )
                  ],
                ),
                Text(
                  widget.userName,
                  style: kHeading8,
                )
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.more_horiz,
                      size: 25,
                      color: Colors.white,
                    )),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '2hrs ago',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFFF)),
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        RichText(
            text: TextSpan(
                text: widget.postText,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF)),
                children: [
              TextSpan(
                text: widget.hashTag,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF1566C9)),
              )
            ])),
        SizedBox(
          height: widget.postWidget != null ? 10 : 0,
        ),
        SizedBox(
          height: widget.postWidget != null ? 200 : 0,
          width: widget.postWidget != null ? double.infinity : 0,
          child: widget.postWidget,
        ),
        SizedBox(
          height: widget.postWidget != null ? 10 : 0,
        ),
        Row(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: toggleLike,
                  child: Icon(
                    Icons.thumb_up_alt_outlined,
                    color: isLiked
                        ? const Color(0xFF1566C9)
                        : const Color(0xFF8F90A6),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  '365',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Row(
              children: [
                InkWell(
                  onTap: toggleDislike,
                  child: Icon(
                    Icons.thumb_down_alt_outlined,
                    color: isDisliked
                        ? const Color(0xFFE53535)
                        : const Color(0xFF8F90A6),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  '365',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.message_outlined,
                    color: Color(0xFF8F90A6),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  '365',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {},
              child: const Icon(
                Icons.share,
                color: Color(0xFF8F90A6),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {},
              child: const Icon(
                Icons.archive_outlined,
                color: Color(0xFF8F90A6),
              ),
            ),
          ],
        ),
        const Divider(
          color: Color(0xFF2B2B3D),
        ),
      ],
    );
  }
}
