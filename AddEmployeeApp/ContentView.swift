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
					Image(systemName: "play")
				}
			
			EmployeesView()
				.tabItem {
					Image(systemName: "play")
				}
			
			EmployeesView()
				.tabItem {
					Image(systemName: "play")
				}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
