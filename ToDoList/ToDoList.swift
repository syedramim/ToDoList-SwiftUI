//
//  ContentView.swift
//  ToDoList
//
//  Created by Kaneis Zontanos on 2/23/23.
//

import SwiftUI

struct ToDoList: View {
    @State private var sheetIsPresented = false
    
    var toDos = ["Learn Swift", "Build Apps", "Change the World", "Bring the Awesome", "Take A Vacation"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(toDos, id: \.self) { toDo in
                    NavigationLink {
                        DetailView(passedValue: toDo)
                    } label: {
                        Text(toDo)
                    }
                    .font(.title2)

                }
            }
            .navigationTitle("To Do List")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                        sheetIsPresented.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }


                }
            }
            .sheet(isPresented: $sheetIsPresented) {
                NavigationStack{
                    DetailView(passedValue: "")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoList()
    }
}


