String? validateEmail(value) {
  Pattern patten =
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?";

  RegExp regex = RegExp(patten.toString());
  if (value.length == 0) {
    return "Please enter email";
  } else if (!regex.hasMatch(value)) {
    return 'Please enter valid email';
  } else if (value.length == 1) {
    return null;
  }
  return null;
}

String? validateLabel(value) {
  Pattern patten = r"{0,253}[a-zA-Z0-9 ])?)*$";

  RegExp regex = RegExp(patten.toString());
  if (value.length == 0) {
    return "Enter label";
  } else if (!regex.hasMatch(value)) {
    return 'Please enter valid label';
  }
  return null;
}

String? stringvalidation(value) {
  Pattern patten = r"^(?!\s)([a-zA-Z0-9\s])*?(?<!\s)$";
  RegExp regex = RegExp(patten.toString());
  if (value.length == 0) {
    return "Please enter name";
  } else if (!regex.hasMatch(value)) {
    return 'Please enter valid name';
  } else if (value.length == 1) {
    return null;
  }
  return null;
}

String? locationValidation(value) {
  Pattern patten = r"^(?!\s)([a-zA-Z0-9\s])*?(?<!\s)$";
  RegExp regex = RegExp(patten.toString());
  if (value.length == 0) {
    return "Please enter location";
  } else if (!regex.hasMatch(value)) {
    return 'Please enter valid location';
  } else if (value.length == 1) {
    return null;
  }
  return null;
}


String? nameValidation(value) {
  String pattern = r'(^[a-zA-Z ]*$)';
  RegExp regExp = RegExp(pattern);
  if (value.trim().isEmpty) {
    return "Name is required";
  } else if (!regExp.hasMatch(value)) {
    return "Name must be a-z and A-Z";
  }
  return null;
}
String? addressValidation(value) {
  if (value.trim().isEmpty) {
    return "Address is required";
  } else if (value.toString().length <10) {
    return "Address must be length 10";
  }
  return null;
}

String? aboutValidation(value) {
  if (value.trim().isEmpty) {
    return "description is required";
  }
  return null;
}

String? validUrl(String value) {
  String pattern =   r'^((?:.|\n)*?)((http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)([-A-Z0-9.]+)(/[-A-Z0-9+&@#/%=~_|!:,.;]*)?(\?[A-Z0-9+&@#/%=~_|!:‌​,.;]*)?)';
  RegExp regExp =  RegExp(pattern);
  if (value.isEmpty) {
    return 'Please enter url';
  }
  else if (!regExp.hasMatch(value)) {
    return 'Please enter valid url';
  }
  return null;
}

String? jobTitleValidation(value) {
  if (value.trim().length == 0) {
    return "Job Title is required";
  }
  return null;
}

String? crewNameValidation(value) {
  if (value.trim().length == 0) {
    return "Name is required";
  }
  return null;
}

String? addEventValidation(value){
  if(value.trim().length == 0){
    return "Event Title is required";
  }
  return null;
}

String? selectOfferEmployValidation(value){
  if(value.trim().length == 0){
    return "employ name is required";
  }
  return null;
}

String? projectNameValidation(value) {
  if (value.trim().length == 0) {
    return 'Project Name Required';
  } else if (value.toString().trim().length <= 4) {
    return 'Project name length should be at least 5 characters';
  }
  return null;
}

String? wageValidation( value) {
  if (value?.length == 0) {
    return 'Wage is required.';
  } else if (double.tryParse(value ?? '0.0')! <= 0) {
    return 'Wadge is greater than 0';
  }
  return null;
}

String? validatePassword(value) {
  if (value.length < 6) {
    return 'Password has to be at least 6 characters';
  }
  return null;
}

String? validateName( value) {
  if (value.isEmpty) {
    return 'Please enter name';
  }
  return null;
}

String? validateCompanyName(value) {
  if (value.isEmpty) {
    return 'Please enter company name';
  }
  return null;
}

String? companyValidatePassword(value) {
  if (value.length < 6) {
    return 'Password has to be at least 6 characters';
  }
  return null;
}
String? companyValidateEmail(value) {
  return null;
}
String? validateMobile(value) {
  String patttern = r'(^(?:[+0]9)?[0-9]{10}$)';
  RegExp regExp = RegExp(patttern);
  if (value.length == 0) {
    return 'Please enter mobile number';
  } else if (!regExp.hasMatch(value)) {
    return 'Please enter valid mobile number';
  }
  return null;
}

String? validateFax(value) {
  String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regExp = RegExp(patttern);
  if (value.length == 0) {
    return 'Please enter fax number';
  } else if (!regExp.hasMatch(value)) {
    return 'Please enter valid fax number';
  }
  return null;
}

String? validateAccessCode(value) {
  String pattern = r'(^[0-9]*$)';
  RegExp regExp = RegExp(pattern);
  if (value.length == 0) {
    return "AccessCode is Required";
  } else if (value.length != 6) {
    return "AccessCode must 6 digits";
  } else if (!regExp.hasMatch(value)) {
    return "AccessCode must be digits";
  }
  return null;
}

String? cardNameValidation(value) {
  if (value.trim().length == 0) {
    return "Card  name is required";
  }
  return null;
}

String? descriptionValidation(value) {
  if (value.trim().length == 0) {
    return "Description is required";
  }
  return null;
}

String? addLabelNameValidation(value) {
  if (value.trim().length == 0) {
    return "Description is required";
  }
  return null;
}

String? listNameValidation(value) {
  if (value.trim().length < 3) {
    return "List Name length must be 3-100 characters long";
  }
  return null;
}

String? addCardValidation(value) {
  if (value.trim().length < 3) {
    return "Card Name length must be 3-100 characters long";
  }
  return null;
}

String? addSubCardValidation(value) {
  if (value.trim().length < 3) {
    return "Sub-Project Name length must be 3-100 characters long";
  }
  return null;
}

String? isNotEmptyValidation(value) {
  if (value.trim().length == 0) {
    return "Experience is required";
  }
  return null;
}