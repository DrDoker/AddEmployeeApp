//
//  BaseTextFieldView.swift
//  AddEmployeeApp
//
//  Created by Serhii  on 25/12/2022.
//

import SwiftUI

struct BaseTextFieldView: View {
	
	@Binding var text: String
	var placeholder: String
	
	var body: some View {
		ZStack {
			RoundedRectangle(cornerRadius: 8)
				.frame(height: 56)
				.foregroundColor(Colors.backgroundTextField.color)
			VStack(alignment: .leading, spacing: 2)  {
				if !$text.wrappedValue.isEmpty {
					Text(placeholder)
						.foregroundColor(Colors.placeholderTextField.color)
						.font(Fonts.systemSmall.medium)
				}
				TextField(text: $text) {
					Text(placeholder)
						.font(Fonts.systemMedium.medium)
				}
			}
			.padding(.horizontal, 20)
		}
	}
}

