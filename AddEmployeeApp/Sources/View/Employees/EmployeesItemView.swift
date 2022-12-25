//
//  EmployeesItemView.swift
//  AddEmployeeApp
//
//  Created by Serhii  on 25/12/2022.
//

import SwiftUI

struct EmployeesItemView: View {
	
	var item: Employee
	
    var body: some View {
		VStack(alignment: .leading, spacing: 4) {
			Text(item.name)
				.font(Fonts.systemMedium.semibold)
			Text(item.phone)
				.font(Fonts.systemSmall.semibold)
				.foregroundColor(Colors.employeePhoneList.color)
			Divider()
				.padding(.top, 8)
		}
    }
}

struct EmployeesItemView_Previews: PreviewProvider {
    static var previews: some View {
        EmployeesItemView(item: Employee(
			name: Strings.AddEmployeeView.nameTextFieldPlaceholder,
			   phone: Strings.AddEmployeeView.phoneTextFieldPlaceholder))
    }
}
