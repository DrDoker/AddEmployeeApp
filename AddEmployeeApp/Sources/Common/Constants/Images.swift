//
//  Images.swift
//  AddEmployeeApp
//
//  Created by Serhii  on 24/12/2022.
//

import SwiftUI

enum Images: String {
	case plusImage = "plus.circle.fill"
	case tray = "tray.2.fill"
	case list = "list.bullet.rectangle.fill"
	case person = "person.fill"

	var systemImage: Image {
		.init(systemName: rawValue)
	}
	
	var image: Image {
		.init(rawValue)
	}
}
