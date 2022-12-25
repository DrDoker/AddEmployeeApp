//
//  Fonts.swift
//  AddEmployeeApp
//
//  Created by Serhii  on 24/12/2022.
//

import SwiftUI

enum Fonts: CGFloat {
	
	case systemSmall = 14
	case systemMedium = 18
	case systemLarge = 24
	
	var regular: Font {
		.system(size: rawValue, weight: .regular)
	}
	
	var medium: Font {
		.system(size: rawValue, weight: .medium)
	}
	
	var semibold: Font {
		.system(size: rawValue, weight: .semibold)
	}
	
	var bold: Font {
		.system(size: rawValue, weight: .bold)
	}
}


