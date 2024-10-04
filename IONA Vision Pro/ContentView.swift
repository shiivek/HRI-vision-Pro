//
//  ContentView.swift
//  IONA Vision Pro
//
//  Created by Agarwal, Shiivek on 10/1/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

//struct ContentView: View {
//
//    var body: some View {
//
//    }
//}


struct ContentView: View {
    var body: some View {
        
        
        NavigationView {
            List  {
                Spacer(minLength: 100)
                NavigationLink(destination: BaseView()) {
                    Text("Base")
                        .font(.extraLargeTitle) // Increase font size
                    
                }//.padding(.top, 50) // Add top padding for spacing
                
                NavigationLink(destination: ChestView()) {
                    Text("Chest")
                        .font(.extraLargeTitle)
                    
                }/*.padding(.top, 50)*/
                
                NavigationLink(destination: ArmView()) {
                    Text("Arm")
                        .font(.extraLargeTitle)
                    
                }/*.padding(.top, 50)*/
                Spacer()
            }
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("  Functions")
                            .font(.extraLargeTitle)
                            .padding(.top, 100)

                    }
                }
        }
        
    }
}


struct BaseView: View {
    var body: some View {
        Text("Control the base")
            .font(.largeTitle)
            .padding()
        Button(action: {
            // Code
        }) {
            Image(systemName: "arrow.up")
                .font(.system(size: 40)) // Set the desired size

        }
        HStack {
            Button(action: {
                // Code
            }) {
                Image(systemName: "arrow.left")
            }
            Button(action: {
                // Code
            }) {
                Image(systemName: "arrow.right")
            }
        }
        Button(action: {
            // Code
        }) {
            Image(systemName: "arrow.down")
        }
    }
}

struct ChestView: View {
    var body: some View {
        Text("control the chest")
            .font(.largeTitle)
            .padding()
        
        Button(action: {
            // Code
        }) {
            Image(systemName: "arrow.up")
        }
        Button(action: {
            // Code
        }) {
            Image(systemName: "arrow.down")
        }
    }
}

struct ArmView: View {
    var body: some View {
        Text("control the arm")
            .font(.largeTitle)
            .padding()
    }
}


#Preview(windowStyle: .automatic) {
    ContentView()
    //HomeView()
        .environment(AppModel())
}





