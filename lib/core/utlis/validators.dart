import 'package:form_field_validator/form_field_validator.dart';

class Validate {
  // email
  static final email = EmailValidator(errorText: 'enter a valid email address');
// password
  static final password = MultiValidator([
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'passwords must have at least one special character')
  ]);
// required
  static final required =
      RequiredValidator(errorText: 'this field is required');

  static conformPassword(String val, String password) {
    return MatchValidator(errorText: 'passwords do not match')
        .validateMatch(val, password);
  }
}
