import 'package:flutter/widgets.dart';
import 'package:new_project/src/Screens/Profile/components/profile_form.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  ProfileForm.routerName: (context) => const ProfileForm(),
};
