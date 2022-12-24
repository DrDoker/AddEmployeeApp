//
//  AddEmployeeView.swift
//  AddEmployeeApp
//
//  Created by Serhii  on 22/12/2022.
//

import SwiftUI

struct AddEmployeeView: View {
	
	@State private var employee = Employee(id: UUID(), name: "", phone: "")
	
    var body: some View {
			VStack(alignment: .leading, spacing: 24) {
				Text("Add Employee")
					.font(Font.system(size: 24, weight: .bold))
				
				textField($employee.name, placeholder: "Name")
				
				VStack(alignment: .leading, spacing: 12) {
					textField($employee.phone, placeholder: "Phone")
						.keyboardType(.phonePad)
					Text("Your employee will receive an SMS with an invitation to connect to the Alarm account")
						.font(Font.system(size: 14, weight: .medium))
						.fixedSize(horizontal: false, vertical: true)
				}
				
				Button {
					print("Add New: \(employee.name) \(employee.phone)")
				} label: {
					HStack {
						Image(systemName: "plus.circle.fill")
						Text("Add")
					}
				}
				.frame(height: 56)
				.frame(maxWidth: .infinity)
				.font(Font.system(size: 18, weight: .semibold))
				.foregroundColor(.black)
				.background {
					isEnabled
					? Color(UIColor(red: 1, green: 0.721, blue: 0.188, alpha: 1))
					: Color(UIColor(red: 1, green: 0.721, blue: 0.188, alpha: 1)).opacity(0.6)
				}
				.cornerRadius(80)
				.disabled(!isEnabled)
				
				Spacer()
			}
			.padding(.top, 30)
			.padding(.horizontal)
    }
	
	var isEnabled: Bool {
		!employee.name.isEmpty && !employee.phone.isEmpty
	}
	
	func textField(_ text: Binding<String>, placeholder: String) -> some View {
		ZStack {
			RoundedRectangle(cornerRadius: 8)
				.frame(height: 56)
				.foregroundColor(Color(UIColor(red: 0.957, green: 0.957, blue: 0.961, alpha: 1).cgColor))
			VStack(alignment: .leading, spacing: 2)  {
				if !text.wrappedValue.isEmpty {
					Text(placeholder)
						.foregroundColor(Color(UIColor(red: 0.565, green: 0.592, blue: 0.659, alpha: 1)))
						.font(Font.system(size: 14, weight: .medium))
				}
				TextField(text: text) {
					Text(placeholder)
						.font(Font.system(size: 18, weight: .medium))
				}
			}
			.padding(.horizontal, 20)
		}
	}
}

struct AddEmployeeView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmployeeView()
    }
}
