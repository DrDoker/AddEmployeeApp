//
//  ContentView.swift
//  AddEmployeeApp
//
//  Created by Serhii  on 22/12/2022.
//

import SwiftUI

struct TabBarView: View {
	
	var body: some View {
		TabView {
			EmployeesView()
				.tabItem {
					Images.tray.systemImage
				}
			
			EmployeesView()
				.tabItem {
					Images.list.systemImage
				}
			
			EmployeesView()
				.tabItem {
					Images.person.systemImage
				}
		}
		.tint(Colors.enableButton.color)
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		TabBarView()
	}
}
