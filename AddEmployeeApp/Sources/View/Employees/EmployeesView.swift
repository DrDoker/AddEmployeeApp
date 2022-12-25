//
//  EmployeesView.swift
//  AddEmployeeApp
//
//  Created by Serhii  on 22/12/2022.
//

import SwiftUI

struct EmployeesView: View {
	
	@State private var isPresented = false
	@State private var items: [Employee] = []
	
	var body: some View {
		NavigationStack {
			VStack {
				List {
					ForEach(items, id: \.id) { item in
						EmployeesItemView(item: item)
					}
					.listRowSeparator(.hidden)
				}
				.listStyle(.plain)
				
				BaseButtonView(
					title: Strings.EmployeesView.addEmployeeButtonTittle,
					image: 	Images.plusImage.systemImage,
					isEnabled: true) {
						isPresented.toggle()
					}
					.padding(.horizontal, 20)
			}
			.padding(.top, 30)
			.padding(.bottom, 24)
			.navigationBarTitle(Strings.EmployeesView.employeesNavigationBar)
			.sheet(isPresented: $isPresented) {
				AddEmployeeView(items: $items, isPresented: $isPresented)
					.presentationDetents([.fraction(0.5)])
					.presentationDragIndicator(SwiftUI.Visibility.visible)
			}
		}
	}
}

struct EmployeesView_Previews: PreviewProvider {
	static var previews: some View {
		EmployeesView()
	}
}
