//
//  ContentView.swift
//  AddEmployeeApp
//
//  Created by Serhii  on 22/12/2022.
//

import SwiftUI

struct ContentView: View {
	
	var body: some View {
		TabView {
			EmployeesView()
				.tabItem {
					Image(systemName: "tray.2.fill")
				}
			
			EmployeesView()
				.tabItem {
					Image(systemName: "list.bullet.rectangle.fill")
				}
			
			EmployeesView()
				.tabItem {
					Image(systemName: "person.fill")
				}
		}
		.tint(Color(UIColor(red: 1, green: 0.721, blue: 0.188, alpha: 1)))

	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
