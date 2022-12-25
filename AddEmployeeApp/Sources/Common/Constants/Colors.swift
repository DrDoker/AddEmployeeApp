//
//  Colors.swift
//  AddEmployeeApp
//
//  Created by Serhii  on 24/12/2022.
//

import SwiftUI

enum Colors: String {
	case enableButton = "enableButton"
	case disableButton = "disableButton"
	case backgroundTextField = "backgroundTextField"
	case notEmptyBackgroundTextField = "notEmptyBackgroundTextField"
	case placeholderTextField = "placeholderTextField"
	case tittleButton = "tittleButton"
	case employeePhoneList = "employeePhoneList"
	
	var color: Color {
		.init(rawValue)
	}
}
