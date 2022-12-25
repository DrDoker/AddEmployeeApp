//
//  AddEmployeeView.swift
//  AddEmployeeApp
//
//  Created by Serhii  on 22/12/2022.
//

import SwiftUI

struct AddEmployeeView: View {
	
	@State private var name = String()
	@State private var phone = String()
	@Binding var items: [Employee]
	@Binding var isPresented: Bool
	
	var isEnabled: Bool { !name.isEmpty && !phone.isEmpty }
	
	var body: some View {
		VStack(alignment: .leading, spacing: 24) {
			Text(Strings.AddEmployeeView.addEmployeeTittle)
				.font(Fonts.systemLarge.bold)
			
			BaseTextFieldView(
				text: $name,
				placeholder: Strings.AddEmployeeView.nameTextFieldPlaceholder
			)
			
			VStack(alignment: .leading, spacing: 12) {
				BaseTextFieldView(
					text: $phone,
					placeholder: Strings.AddEmployeeView.phoneTextFieldPlaceholder
				)
				.keyboardType(UIKeyboardType.numberPad)
				
				Text(Strings.AddEmployeeView.smsDescription)
					.font(Fonts.systemSmall.medium)
					.fixedSize(horizontal: false, vertical: true)
			}
			
			BaseButtonView(
				title: Strings.AddEmployeeView.addButtonTittle,
				image: Images.plusImage.systemImage,
				isEnabled: isEnabled) {
					items.append(Employee(name: name, phone: phone))
					isPresented.toggle()
				}
			
			Spacer()
		}
		.padding(.top, 30)
		.padding(.horizontal)
	}
}

struct AddEmployeeView_Previews: PreviewProvider {
	static var previews: some View {
		AddEmployeeView(
			items: .constant([Employee(
				name: Strings.AddEmployeeView.nameTextFieldPlaceholder,
				phone: Strings.AddEmployeeView.phoneTextFieldPlaceholder)]),
			isPresented: .constant(true)
		)
	}
}
