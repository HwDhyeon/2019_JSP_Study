package webStudy;

import java.util.regex.Pattern;

public class PhoneNumberFormat {

	public String makePhoneNumber (String PhoneNoStr) {
		String regEx = "(\\d{3})(\\d{3,4})(\\d{4})";
		if(!Pattern.matches(regEx, PhoneNoStr)) return null;
		return PhoneNoStr.replaceAll(regEx, "$1-$2-$3");
	}
}
