import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:mime/mime.dart';
import 'package:support_pkg/core/entities/failures.dart';
import 'package:support_pkg/generated/l10n.dart';

extension ContextExtension on BuildContext {
  double dynamicHeight(double value) => MediaQuery.of(this).size.height * value;

  double dynamicWidth(double value) => MediaQuery.of(this).size.width * value;

  ThemeData get theme => Theme.of(this);
}

// 1 500
// x 300
extension PaddingValues on BuildContext {
  /// Width
  double get paddingUltraSmallWidth => dynamicWidth(0.01);

  double get paddingExtraSmallWidth => dynamicWidth(0.02);

  double get paddingSmallWidth => dynamicWidth(0.04);

  double get paddingDefaultWidth => dynamicWidth(0.06);

  double get paddingLargeWidth => dynamicWidth(0.08);

  double get paddingExtraLargeWidth => dynamicWidth(0.1);

  /// Height
  double get paddingUltraSmallHeight => dynamicHeight(0.005);

  double get paddingExtraSmallHeight => dynamicHeight(0.01);

  double get paddingSmallHeight => dynamicHeight(0.02);

  double get paddingDefaultHeight => dynamicHeight(0.04);

  double get paddingLargeHeight => dynamicHeight(0.08);

  double get paddingExtraLargeHeight => dynamicHeight(0.08);
}
extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

CachedNetworkImage buildImage(
    BuildContext context, double width, double height, String url) {
  return CachedNetworkImage(
    height: height,
    width: width,
    imageUrl: url,
    imageBuilder: (context, imageProvider) => Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
        ),
      ),
    ),
    placeholder: (context, url) => SizedBox(
      height: height,
      width: width,
      child: const Center(child: CircularProgressIndicator()),
    ),
    errorWidget: (context, url, error) => const Icon(Icons.error),
  );
}

extension DiscountNumber on double {
  /// discount value must be between 1 ~ 100
  double discount(double discount) => this - ((discount / 100) * this);
}

extension NullOrDefaulValue on String? {
  String get nullOrEmpty => this ?? '';
}
extension GetMessageFromFailuer on Failure {
  String get getMessage => this is ServerFailure ? (this as ServerFailure).message : S.current.errorHappened;
}
extension MimeType on XFile {
  String? get platformMimeType => (kIsWeb) ? mimeType : lookupMimeType(path);
}