//
//  EmployeesView.swift
//  AddEmployeeApp
//
//  Created by Serhii  on 22/12/2022.
//

import SwiftUI

struct EmployeesView: View {
	var items: [Employee] = [
		Employee(id: .init(), name: "Rick", phone: "+48503456324"),
		Employee(id: .init(), name: "Rick", phone: "+48503456324"),
		Employee(id: .init(), name: "Rick", phone: "+48503456324"),
		Employee(id: .init(), name: "Rick", phone: "+48503456324"),
		Employee(id: .init(), name: "Rick", phone: "+48503456324")
	]
	
	var body: some View {
		NavigationStack {
			VStack {
				List {
					ForEach(items, id: \.id) { item in
						VStack(alignment: .leading, spacing: 4) {
							Text(item.name)
								.font(Font.system(size: 18, weight: .semibold))
							Text(item.phone)
								.font(Font.system(size: 14, weight: .semibold))
								.foregroundColor(.gray)
							Divider()
								.padding(.top, 8)
						}
					}
					.listRowSeparator(.hidden)
				}
				.listStyle(.plain)
				
				Button {
					
				} label: {
					HStack {
						Image(systemName: "plus.circle.fill")
						Text("Add Employee")
					}
				}
				.frame(height: 56)
				.frame(maxWidth: .infinity)
				.font(Font.system(size: 18, weight: .semibold))
				.foregroundColor(.black)
				.background {
					Color(UIColor(red: 1, green: 0.721, blue: 0.188, alpha: 1))
						.cornerRadius(80)
				}
				.padding(.horizontal, 20)
			}
			.padding(.top, 30)
			.padding(.bottom, 24)
			.navigationBarTitle("Employees")
		}
	}
}

struct EmployeesView_Previews: PreviewProvider {
    static var previews: some View {
        EmployeesView()
    }
}
