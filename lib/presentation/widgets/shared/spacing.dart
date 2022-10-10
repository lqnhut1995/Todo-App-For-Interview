import 'package:flutter/material.dart';

import 'package:interview_project/constant/spacing.dart';

///  * 0 = none - nothing. only here to bust out of a zero-based array.
const spaceZero = Offstage();

///  * 4.0 = tiny - elements contextually close to each other
const vSpaceXXS = SizedBox(height: Spacing.xxs);

///  * 8.0 = smaller - for groups of closely related items or perhaps borders
const vSpaceXS = SizedBox(height: Spacing.xs);

///  * 12.0 = small   - ?
const vSpaceS = SizedBox(height: Spacing.s);

///  * 16.0 = medium  - ?
const vSpaceM = SizedBox(height: Spacing.m);

///  * 24.0 = medium+ - ?
const vSpaceL = SizedBox(height: Spacing.l);

///  * 32.0 = large - between groups of content that aren't related?
const vSpaceXL = SizedBox(height: Spacing.xl);

///  * 48.0 = huge - ?
const vSpaceXXL = SizedBox(height: Spacing.xxl);

///  * 4.0 = tiny - elements contextually close to each other
const hSpaceXXS = SizedBox(width: Spacing.xxs);

///  * 8.0 = smaller - for groups of closely related items or perhaps borders
const hSpaceXS = SizedBox(width: Spacing.xs);

///  * 12.0 = small   - ?
const hSpaceS = SizedBox(width: Spacing.s);

///  * 16.0 = medium  - ?
const hSpaceM = SizedBox(width: Spacing.m);

///  * 24.0 = medium+ - ?
const hSpaceL = SizedBox(width: Spacing.l);

///  * 32.0 = large - between groups of content that aren't related?
const hSpaceXL = SizedBox(width: Spacing.xl);

///  * 48.0 = huge - ?
const hSpaceXXL = SizedBox(width: Spacing.xxl);
