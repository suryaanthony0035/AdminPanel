import 'package:adminpanel/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Dashboard", style: Theme.of(context).textTheme.headline6),
        Spacer(
          flex: 2,
        ),
        Expanded(
          child: Searchfield(),
        ),
        Profilecard()
      ],
    );
  }
}

class Profilecard extends StatelessWidget {
  const Profilecard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/profile_pic.png",
            height: 38,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            child: Text("Admin"),
          ),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

class Searchfield extends StatelessWidget {
  const Searchfield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search",
          fillColor: secondaryColor,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          suffixIcon: InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(defaultPadding * 0.75),
              margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                color: primaryColor,
              ),
              child: SvgPicture.asset("assets/icons/Search.svg"),
            ),
          )),
    );
  }
}
