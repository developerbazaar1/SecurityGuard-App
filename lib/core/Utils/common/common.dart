import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';
import 'package:myapp/core/Utils/sizeUtils.dart';
import 'package:shimmer/shimmer.dart';

import '../../../app/theme/common_method/common_method.dart';
import '../../../app/theme/constant/constants.dart';
import '../../../app/theme/constant/constant_text.dart';
import '../../../read_more/read_more.dart';

class CW {
  var height = SizeUtils.instance.screenHeight;
  var width = SizeUtils.instance.screenWidth;
  ///For Full Size Use In Column Not In ROW
  static Widget commonElevatedButton(
      {
        double? height,
        double? width,
        EdgeInsetsGeometry? buttonMargin,
        EdgeInsetsGeometry? contentPadding,
        double? borderRadius,
        Color? splashColor,
        bool wantContentSizeButton = true,
        Color? buttonColor,
        double? elevation,
        required VoidCallback onPressed,
        required Widget child
      }) {
    return Container(
      height: wantContentSizeButton ? height : height,
      width: wantContentSizeButton ? width : double.infinity,
      margin: buttonMargin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 5),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: elevation ?? 0,
          padding: contentPadding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 5),
          ),
          backgroundColor: buttonColor ?? kThemeColorDark,
          foregroundColor: splashColor ?? Colors.white12,
          shadowColor: Colors.transparent,
        ),
        child: child,
      ),
    );
  }

  static Widget commonRefreshIndicator(
      {required Widget child, required RefreshCallback onRefresh}) {
    return RefreshIndicator(onRefresh: onRefresh, child: child);
  }

  static Widget commonNoInternetImage({required RefreshCallback onRefresh}) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1));
        },
        child: ScrollConfiguration(
          behavior: ListScrollBehaviour(),
          child: CustomScrollView(
            slivers: <Widget>[
              /*SliverToBoxAdapter(
                child: Container(color: Colors.red,),
              ),
              */
              SliverFillRemaining(
                hasScrollBody: true,
                child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(C.imageNoInternetConnection),
                        commonTitleForError(title: C.textNoInternetTitle),
                        commonDisForError(dis: C.textNoInternetDis)
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget commonNoDataFoundImage({required RefreshCallback onRefresh}) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1));
        },
        child: ScrollConfiguration(
          behavior: ListScrollBehaviour(),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverFillRemaining(
                hasScrollBody: true,
                child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(C.imageNoDataFound),
                        commonTitleForError(title: C.textNoDataTitle),
                        commonDisForError(dis: C.textNoDataDis)
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget commonSomethingWentWrongImage(
      {required RefreshCallback onRefresh}) {
    return Expanded(
        child: RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(const Duration(seconds: 1));
          },
          child: ScrollConfiguration(
            behavior: ListScrollBehaviour(),
            child: CustomScrollView(
              slivers: <Widget>[
                SliverFillRemaining(
                  hasScrollBody: true,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(C.imageSomethingWentWrong),
                        commonTitleForError(title: C.textSomethingWentWrongTitle),
                        commonDisForError(dis: C.textSomethingWentWrongDis)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  static Widget commonTitleForError({required String title}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: Theme.of(Get.context!)
            .textTheme
            .displayLarge
            ?.copyWith(color: kText, fontFamily: C.fontOpenSans),
      ),
    );
  }

  static Widget commonDisForError({required String dis}) {
    return Text(
      dis,
      textAlign: TextAlign.center,
      style: Theme.of(Get.context!)
          .textTheme
          .titleMedium
          ?.copyWith(color: ktextGrayColor, fontFamily: C.fontOpenSans),
    );
  }

  static Widget commonElevatedButtonForLoginSignUp(
      {double? height,
        double? width,
        bool isClicked = false,
        EdgeInsetsGeometry? buttonMargin,
        EdgeInsetsGeometry? contentPadding,
        double? borderRadius,
        Color? splashColor,
        bool wantContentSizeButton = true,
        Color? buttonColor,
        double? elevation,
        required VoidCallback onPressed,
        required Widget child}) {
    return AnimatedContainer(
      height: isClicked ? 52 : height,
      width: isClicked ? 52 : width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            isClicked ? 30 : borderRadius ?? 5),
        color: buttonColor,
      ),
      duration: const Duration(
        seconds: 2,
      ),
      child: isClicked
          ? SizedBox(
        height: height ?? 52,
        width: height ?? 52 ,
        child: Padding(
          padding: EdgeInsets.all(10 ),
          child: CircularProgressIndicator(
            backgroundColor: const Color(0xff7C7C7C).withOpacity(.5),
            strokeWidth: 3,
          ),
        ),
      )
          : Container(
        height: wantContentSizeButton ? height : 54 ,
        width: wantContentSizeButton ? width : double.infinity,
        margin: buttonMargin,
        decoration: BoxDecoration(
          borderRadius:
          BorderRadius.circular(borderRadius ??  4),
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            elevation: elevation ?? 0 ,
            padding: contentPadding,
            shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(borderRadius ??  4),
            ),
            backgroundColor: buttonColor ??  kThemeColorDark,
            foregroundColor: splashColor ?? Colors.white12,
            shadowColor: Colors.transparent,
          ),
          child: child,
        ),
      ),
    );
  }

  static Widget commonTextButton(
      {double? height,
        double? width,
        EdgeInsetsGeometry? buttonMargin,
        EdgeInsetsGeometry? contentPadding,
        double? borderRadius,
        bool wantContentSizeButton = true,
        double? elevation,
        required VoidCallback onPressed,
        required Widget child}) {
    return Container(
      height: height,
      width: wantContentSizeButton ? width : double.infinity,
      margin: buttonMargin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 5),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          elevation: elevation ?? 0 ,
          padding: contentPadding,
          shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(borderRadius ?? 5),
          ),
          backgroundColor: Colors.transparent,
          foregroundColor:  kThemeColorDark,
          shadowColor: Colors.transparent,
        ),
        child: child,
      ),
    );
  }

  static Widget commonTextFieldForLoginSignUP({
    double? elevation,
    String? hintText,
    EdgeInsetsGeometry? contentPadding,
    TextEditingController? controller,
    int? maxLines,
    double? cursorHeight,
    Widget? prefixIcon,
    bool wantBorder = true,
    ValueChanged<String>? onChanged,
    FormFieldValidator<String>? validator,
    Color? fillColor,
    Color? initialBorderColor,
    double? initialBorderWidth,
    TextInputType? keyboardType,
    double? borderRadius,
    double? maxHeight,
    TextStyle? hintStyle,
    TextStyle? style,
    GestureTapCallback? onTap,
    List<TextInputFormatter>? inputFormatters,
    TextCapitalization textCapitalization = TextCapitalization.none,
    bool autofocus = false,
    bool readOnly = false,
  }) {
    return TextFormField(
      cursorHeight: cursorHeight,
      onTap: onTap,
      controller: controller,
      onChanged: onChanged ??
              (value) {
            value = value.trim();
            if (value.isEmpty || value.replaceAll(" ", "").isEmpty) {
              controller?.text = "";
            }
          },
      validator: validator,

      keyboardType: keyboardType ?? TextInputType.streetAddress,
      readOnly: readOnly,
      autofocus: autofocus,
      inputFormatters: inputFormatters,
      textCapitalization: textCapitalization,
      style: style ??
          Theme.of(Get.context!)
              .textTheme
              .bodyMedium
              ?.copyWith(fontFamily: C.fontOpenSans, color: kOnSecondary),
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: fillColor ?? kInverseSecondary,
        filled: true,
        prefix: prefixIcon,

        contentPadding:
        contentPadding ?? EdgeInsets.symmetric(horizontal: 20 ),
        hintStyle: hintStyle ??
            Theme.of(Get.context!)
                .textTheme
                .bodyMedium
                ?.copyWith(fontFamily: C.fontOpenSans, color: kOnSecondary),
        disabledBorder: OutlineInputBorder(
            borderSide: wantBorder
                ? BorderSide(color: kInverseSecondary, width: 2 )
                : BorderSide.none,
            borderRadius:
            BorderRadius.circular(borderRadius ?? 10)),
        border: OutlineInputBorder(
            borderSide: wantBorder
                ? BorderSide(color:  kThemeColorDark, width: 2 )
                : BorderSide.none,
            borderRadius:
            BorderRadius.circular(borderRadius ?? 10)),
        enabledBorder: OutlineInputBorder(
            borderSide: wantBorder
                ? BorderSide(
                color: initialBorderColor ?? kInverseSecondary,
                width: initialBorderWidth ?? 2 )
                : BorderSide.none,
            borderRadius:
            BorderRadius.circular(borderRadius ?? 10)),
        errorBorder: OutlineInputBorder(
            borderSide: wantBorder
                ? BorderSide(color: kError, width: 2 )
                : BorderSide.none,
            borderRadius:
            BorderRadius.circular(borderRadius ?? 10)),
      ),
    );
  }

  static Widget textFieldCountryCode(
      {double? borderRadius, required VoidCallback onTap,required String logo,required String code}) =>
      InkWell(
        borderRadius:
        BorderRadius.circular(borderRadius ?? 10),
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 2 ),
          height: 49 ,
          decoration: BoxDecoration(
            borderRadius:
            BorderRadius.circular(borderRadius ?? 10),
            color: kInverseSecondary,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 30 ,
                child: Image.network(
                  logo,
                  height: 25 ,
                  width: 20 ,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                width: 4 ,
              ),
              Text(
                code,
                style: Theme.of(Get.context!).textTheme.bodyMedium?.copyWith(
                    fontFamily: C.fontOpenSans, color: kOnSecondary),
              ),
            ],
          ),
        ),
      );

  static Widget commonTextFieldForWriteSomething({
    double? elevation,
    String? hintText,
    EdgeInsetsGeometry? contentPadding,
    TextEditingController? controller,
    int? maxLines,
    double? cursorHeight,
    bool wantBorder = true,
    ValueChanged<String>? onChanged,
    FormFieldValidator<String>? validator,
    Color? fillColor,
    TextInputType? keyboardType,
    double? borderRadius,
    double? maxHeight,
    TextStyle? hintStyle,
    TextStyle? style,
    List<TextInputFormatter>? inputFormatters,
    TextCapitalization textCapitalization = TextCapitalization.none,
    bool autofocus = false,
    bool readOnly = false,
  }) {
    return SizedBox(
      height: 50,
      child: Card(

        elevation: elevation ?? 2 ,
        shape: OutlineInputBorder(
            borderRadius:
            BorderRadius.circular(borderRadius ?? 10),
            borderSide: BorderSide.none),
        child: TextFormField(
          cursorHeight: cursorHeight,
          controller: controller,
          maxLines: maxLines,
          validator: validator,
          keyboardType: keyboardType ?? TextInputType.streetAddress,
          readOnly: readOnly,
          autofocus: autofocus,
          inputFormatters: inputFormatters,
          textCapitalization: textCapitalization,
          style: style ??
              Theme.of(Get.context!).textTheme.bodyMedium?.copyWith(
                  fontFamily: C.fontOpenSans, color: kOnSecondary),
          decoration: InputDecoration(
            hintText: hintText,
            fillColor: fillColor ?? kInverseSecondary,
            hintStyle: hintStyle ??
                Theme.of(Get.context!).textTheme.bodyMedium?.copyWith(
                    fontFamily: C.fontOpenSans, color: kOnSecondary),
            disabledBorder: OutlineInputBorder(
                borderSide: wantBorder
                    ? BorderSide(color: kInverseSecondary, width: 2 )
                    : BorderSide.none,
                borderRadius: BorderRadius.circular(
                    borderRadius ?? 10)),
            contentPadding:
            contentPadding ?? EdgeInsets.symmetric(horizontal: 20 ),
            enabledBorder: OutlineInputBorder(
                borderSide: wantBorder
                    ? BorderSide(color: kInverseSecondary, width: 2 )
                    : BorderSide.none,
                borderRadius: BorderRadius.circular(
                    borderRadius ?? 10)),
            border: OutlineInputBorder(
                borderSide: wantBorder
                    ? BorderSide(color:  kThemeColorDark, width: 2 )
                    : BorderSide.none,
                borderRadius: BorderRadius.circular(
                    borderRadius ?? 10)),
            errorBorder: OutlineInputBorder(
                borderSide: wantBorder
                    ? BorderSide(color: kError, width: 2 )
                    : BorderSide.none,
                borderRadius: BorderRadius.circular(
                    borderRadius ?? 10)),
          ),
        ),
      ),
    );
  }

  static Widget commonDivider(
      {double? height, double? width, double? borderRadius, Color? color}) {
    return Container(
      height: height ?? 1 ,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 2 ),
          color: color ?? kSecondary),
    );
  }

  static Widget commonAppBarWithoutActon(
      {VoidCallback? onPressed,
        required String title,
        VoidCallback? clickOnClearButton,
        bool wantClearButton = false,
        bool wantBackButton = true,
        Widget? widget
      }) {
    return Column(
      children: [
        Container(
          height: CM.getAppBarSize(),
          margin: EdgeInsets.only(top: CM.getToolBarSize()),
          padding: EdgeInsets.symmetric(horizontal: C.margin / 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              wantBackButton
                  ? IconButton(
                onPressed: onPressed,
                icon: Image.asset(
                  C.imageBackButton,
                  color: kSecondary,
                  height: 20 ,
                  width: 24 ,
                ),
                splashRadius: C.iconButtonRadius,
                padding: EdgeInsets.zero,
              )
                  : const SizedBox(),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10 ),
                  child: Text(
                    title,
                   
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              wantClearButton
                  ? Padding(
                padding: EdgeInsets.symmetric(horizontal: C.margin / 2),
                child: commonTextButton(
                  onPressed: clickOnClearButton!,
                  child: Text(
                    C.textClearAll,
                  
                  ),
                ),
              )
                  : const SizedBox(),
              widget!=null
                  ?widget
                  :SizedBox(),
              SizedBox(width: 10,)



            ],
          ),
        ),
        Divider(
          color: kborderColor,
          thickness: 2 ,
          height: 0 ,
        ),
      ],
    );
  }

  static Widget commonAppBarWithActon({
    VoidCallback? clickOnBackButton,
    VoidCallback? clickOnLikeButton,
    VoidCallback? clickOnBookMarkButton,
    VoidCallback? clickOnShareButton,
    VoidCallback? clickOnInfoButton,
    VoidCallback? clickOnZoomButton,
    VoidCallback? clickOnMenuButton,
    Widget? menuButton,
    bool wantLikeButton = true,
    bool wantTitle = false,
    String? title,
    bool wantSwitch=false,
    bool modeValue=false,
    ValueChanged<int>? onChanged,



    bool wantBookMarkButton = false,
    bool wantShareButton = true,
    bool wantInfoButton = true,
    bool wantZoomButton = false,
    bool wantMenuButton = false,
    bool wantBackButton = true,
    bool wantSelectedLikeButton = false,
    bool wantSelectedBookMarkButton = false,
    bool wantDarkMode = false,
    Color? color,
    RxList<bool>? isSelected




  })


  {
    RxList<bool> value = [modeValue].obs;
    return Column(
      children: [
        Container(
          height: CM.getAppBarSize(),
          margin: EdgeInsets.only(top: CM.getToolBarSize()),
          padding: EdgeInsets.symmetric(horizontal: C.margin / 2),
          color: wantDarkMode ? KdarkAppBar : color,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              wantBackButton
                  ? IconButton(
                onPressed: clickOnBackButton,
                icon: Image.asset(
                  C.imageBackButton,
                  color:
                  wantDarkMode ? kInverseSecondary : kSecondary,
                  height: 20 ,
                  width: 24 ,
                ),
                splashRadius: C.iconButtonRadius,
                padding: EdgeInsets.zero,
              )
                  : const SizedBox(),
              wantTitle
                  ? Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10 ),
                  child: Text(
                    title!,
              
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
                  : const SizedBox(),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10 ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if(wantSwitch)
                        ToggleButtons(
                          children: [
                            Image.asset('assets/images/popup_menu_icon_one.png',height: 25,width: 25,),

                          ],
                          isSelected: [modeValue],
                          onPressed: onChanged,
                          color: Colors.white,
                          hoverColor: Colors.white,
                          selectedColor: Colors.white,

                          focusColor: Colors.white,
                          borderColor: Colors.white,
                          disabledColor: Colors.white,
                          disabledBorderColor: Colors.white,

                          borderRadius: BorderRadius.circular(8.0),
                          borderWidth: 2.0,
                        )
                      ,

                      // ToggleButtons(
                      //   children: [
                      //     Image.asset('assets/images/popup_menu_icon_one.png',height: 20,width: 20,),
                      //
                      //   ],
                      //   isSelected:isSelected!=null?isSelected:value,
                      //   onPressed: (index){
                      //     isSelected![index]= !isSelected[index];
                      //     print(isSelected[index]);
                      //     print(onChanged);
                      //     print(modeValue);
                      //     modeValue = isSelected[index];
                      //
                      //
                      //   },
                      //   selectedColor: Colors.white,
                      //   fillColor: Color(0xffFEC26F),
                      //   borderColor: Color(0xffDA640D),
                      //   borderRadius: BorderRadius.circular(8.0),
                      //   borderWidth: 2.0,
                      // ),
                      //  commonSwitchView(
                      //    changeValue: modeValue,
                      //    onChanged: onChanged,
                      // ),
                      if (wantZoomButton)
                        IconButton(
                          onPressed: clickOnZoomButton,
                          icon: Image.asset(
                            C.imageZoomLogo,
                            height: 25 ,
                            width: 25 ,
                            color: wantDarkMode
                                ? kInverseSecondary
                                : kSecondary,
                          ),
                          splashRadius: C.iconButtonRadius,
                          padding: EdgeInsets.zero,
                        ),
                      if (wantLikeButton)
                        IconButton(
                          onPressed: clickOnLikeButton,
                          icon: wantSelectedLikeButton
                              ? Icon(
                            Icons.favorite,
                            color: kError,
                          )
                              : Icon(
                            Icons.favorite_border,
                            color: wantDarkMode
                                ? kInverseSecondary
                                : kSecondary,
                          ),
                          splashRadius: C.iconButtonRadius,
                          padding: EdgeInsets.zero,
                        ),
                      if (wantBookMarkButton)
                        IconButton(
                          onPressed: clickOnBookMarkButton,
                          icon: wantSelectedBookMarkButton
                              ? Icon(
                            Icons.bookmark_outlined,
                            color: wantDarkMode
                                ? kInverseSecondary
                                : kSecondary,
                          )
                              : Icon(
                            Icons.bookmark_outline_rounded,
                            color: wantDarkMode
                                ? kInverseSecondary
                                : kSecondary,
                          ),
                          splashRadius: C.iconButtonRadius,
                          padding: EdgeInsets.zero,
                        ),
                      if (wantShareButton)
                        IconButton(
                          onPressed: clickOnShareButton,
                          icon: Icon(
                            Icons.share,
                            color: wantDarkMode
                                ? kInverseSecondary
                                : kSecondary,
                          ),
                          splashRadius: C.iconButtonRadius,
                          padding: EdgeInsets.zero,
                        ),
                      if (wantMenuButton) menuButton!,
                      if (wantInfoButton)
                        IconButton(
                          onPressed: clickOnInfoButton,
                          icon: Image.asset(
                            C.imageInfoLogo,
                            height: 30 ,
                            width: 30 ,
                            color: wantDarkMode
                                ? kInverseSecondary
                                : kSecondary,
                          ),
                          splashRadius: C.iconButtonRadius,
                          padding: EdgeInsets.zero,
                        )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        if (!wantDarkMode)
          Divider(
            color: kborderColor,
            thickness: 2 ,
            height: 0 ,
          ),
      ],
    );
  }


  static Widget commonSwitchView(
      {required bool changeValue,
        required ValueChanged<bool>? onChanged}) =>
      cupertino.CupertinoSwitch(
        value: changeValue,
        onChanged: onChanged,
        activeColor: kborderColor,
        thumbColor: changeValue ? kSecondary : kInverseSecondary,
        trackColor: kTextGrayColor,
      );

  static Widget commonTextFieldForSearch(
      {double? elevation,
        String? hintText,
        EdgeInsetsGeometry? contentPadding,
        TextEditingController? controller,
        int? maxLines = 1,
        ValueChanged<String>? onChanged,
        FormFieldValidator<String>? validator,
        Color? fillColor,
        TextInputType? keyboardType,
        double? borderRadius,
        List<TextInputFormatter>? inputFormatters,
        TextCapitalization textCapitalization = TextCapitalization.none,
        bool autofocus = false,
        ValueChanged<String>? onFieldSubmitted,
        bool readOnly = false,
        bool wantFilterIcon=true,
        TextInputAction? textInputAction,
        VoidCallback? clickOnSearchIcon,
        VoidCallback? clickOnFilterIcon}) {
    return Card(
      elevation: elevation ?? 2 ,
      color: fillColor,
      shape: OutlineInputBorder(
          borderRadius:
          BorderRadius.circular(borderRadius ?? 10),
          borderSide: BorderSide.none),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        onFieldSubmitted: onFieldSubmitted,
        textInputAction: textInputAction,
        onChanged: onChanged,
        validator: validator,
        keyboardType: keyboardType,
        readOnly: readOnly,
        autofocus: autofocus,
        inputFormatters: inputFormatters,
        textCapitalization: textCapitalization,

        decoration: InputDecoration(
          hintText: hintText,
          fillColor: fillColor ?? kInverseSecondary,
          prefixIcon: IconButton(
            onPressed: clickOnSearchIcon,
            icon: Image.asset(
              C.imageSearchPageLogo,
              height: 30 ,
              width: 30 ,
            ),
          ),
          suffixIcon: wantFilterIcon?IconButton(
            onPressed: clickOnFilterIcon,
            icon: Image.asset(
              C.imageFilterLogo,
              height: 12 ,
              width: 20 ,
            ),
            splashRadius: C.iconButtonRadius,
          ):null,
        
          contentPadding:
          contentPadding ?? EdgeInsets.symmetric(horizontal: 20 ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                  borderRadius ?? 10)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                  borderRadius ?? 10)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                  borderRadius ?? 10)),
        ),
      ),
    );
  }

  static Widget commonReadMoreText({
    required String value,
    int? maxLine,
  }) {
    final v = value.obs;
    return Obx(() {
      return ReadMoreText(
        v.value,

        moreStyle: Theme.of(Get.context!)
            .textTheme
            .titleLarge
            ?.copyWith(color: kDarkBlue, fontFamily: C.fontOpenSans),
        lessStyle: Theme.of(Get.context!)
            .textTheme
            .titleLarge
            ?.copyWith(color: kDarkBlue, fontFamily: C.fontOpenSans),
        trimLines: maxLine ?? 3,
        trimLength: 7,
        trimCollapsedText: C.textReadMore,
        callback: (val) {
          if (val) {
          } else {
            v.value = v.value.replaceAll("Read More", "");
          }
        },
        trimExpandedText: "  ${C.textReadLess}",
        trimMode: TrimMode.Line,
      );
    });
  }

  static Widget commonRattingView(
      {required double rating,
        double? size,
        EdgeInsets itemPadding = EdgeInsets.zero}) =>
      RatingBarIndicator(
        rating: rating,
        itemBuilder: (context, index) => Icon(
          Icons.star,
          color:  kThemeColorDark,
        ),
        itemPadding: itemPadding,
        itemCount: 5,
        itemSize: size ?? 16 ,
        direction: Axis.horizontal,
      );

  static Widget commonLinearProgressBar({required double value}) => ClipRRect(
    borderRadius: BorderRadius.circular(20 ),
    child: LinearProgressIndicator(
      color:  kThemeColorDark,
      backgroundColor: kbuttonBgColor,
      value: value,
      minHeight: 10 ,
    ),
  );

  static commonProgressBarView() => CircularProgressIndicator(
    backgroundColor: const Color(0xff7C7C7C).withOpacity(.5),
    strokeWidth: 3,
  );

  static Widget commonShimmerViewForImage(
      {double? width, double? height, double? radius}) {
    return Shimmer.fromColors(
      period: const Duration(milliseconds: 1200),
      baseColor: kSecondary,
      highlightColor: kTextGrayColor,
      enabled: true,
      child: Container(
        width: width ?? 150 ,
        height: height ?? 150 ,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(radius ?? 6 ),
        ),
      ),
    );
  }

  static Widget commonPaddingForBookContent({required Widget child}) {

    return Padding(padding: EdgeInsets.only(left: 3 ,right: 20 ),child: child,);
  }
}
