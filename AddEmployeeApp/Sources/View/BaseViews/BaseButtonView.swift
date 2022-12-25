//
//  BaseButtonView.swift
//  AddEmployeeApp
//
//  Created by Serhii  on 24/12/2022.
//

import SwiftUI

struct BaseButtonView: View {
	
	var title: String
	var image: Image
	var isEnabled: Bool
	var action: () -> ()
	
    var body: some View {
		Button {
			action()
		} label: {
			HStack {
				if let image = image {
					image
				}
				Text(title)
			}
		}
		.frame(height: 56)
		.frame(maxWidth: .infinity)
		.font(Fonts.systemMedium.semibold)
		.foregroundColor(Colors.tittleButton.color)
		.background {
			isEnabled
			? Colors.enableButton.color
			: Colors.disableButton.color
		}
		.cornerRadius(80)
		.disabled(!isEnabled)
    }
}
