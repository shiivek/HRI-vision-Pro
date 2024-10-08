//
//  ContentView.swift
//  IONA Vision Pro
//
//  Created by Agarwal, Shiivek on 10/1/24.
//

import SwiftUI
import RealityKit
import RealityKitContent


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
            }.listStyle(.insetGrouped)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text(" Functions")
                            .font(.extraLargeTitle)
                            .padding(.top, 100)

                    }
                }
            
            Image(.hiroLogoWPITheme300X108)
        }
        
    }
}

struct BaseView: View {
    var body: some View {
        VStack {
            Text("Control the base")
                .font(
                    .extraLargeTitle
                ) // Adjusted to .largeTitle for consistency
                .padding()

            VStack {
                Button(action: {
                    // Action for up button
                }) {
                    Image(systemName: "arrow.up")
                        .font(.system(size: 100))
                        .padding(30)
                }
                
                .clipShape(Circle()) // Make the button circular
                .padding(.bottom, -40)

                HStack {
                    Button(action: {
                        // Action for left button
                    }) {
                        Image(systemName: "arrow.left")
                            .font(.system(size: 100))
                            .padding(40)
                    }
            
                    .clipShape(Circle())

                    Spacer()
                        .frame(width: 40)

                    Button(action: {
                        // Action for right button
                    }) {
                        Image(systemName: "arrow.right")
                            .font(.system(size: 100))
                            .padding(40)
                    }
    
                    .clipShape(Circle())
                }
                .padding(.bottom, -40)

                Button(action: {
           
                }) {
                    Image(systemName: "arrow.down")
                        .font(.system(size: 100))
                        .padding(30)
                }
           
                .clipShape(Circle())
            }
            .padding()
        }
    }
}


struct ChestView: View {
    var body: some View {
        VStack {
            Text("Control The Chest")
                .font(.extraLargeTitle)
                .padding(.bottom, 50)

            VStack {
                Button(action: {
                    // Action for up button
                }) {
                    Image(systemName: "arrow.up")
                        .font(.system(size: 100))
                        .padding(30)
                }
                .clipShape(Circle()) // Make the button circular
                .padding(.bottom, 40)
         

                Button(action: {
                    // Action for down button
                }) {
                    Image(systemName: "arrow.down")
                        .font(.system(size: 100))
                        .padding(30)

                }
                .clipShape(Circle()) // Make the button circular
            }
            .padding() // Padding around the HStack
        }
    }
}


struct ArmView: View {
    var body: some View {
        VStack {
            Text("Control The Arm")
                .font(.extraLargeTitle)
                .padding(40)

            HStack {
                VStack {
                    Text("Move Target")
                        .font(.largeTitle)
                        .padding(.bottom, 10) // Space between text and circle

                    Button(action: {
                        // Action for pin button
                    }) {
                        Image(systemName: "pin")
                            .font(.system(size: 100))
                            .padding(30)
                    }
                    .frame(width: 150, height: 150) // Set fixed size for the button
                    .clipShape(Circle()) // Make the button circular
                }
                
                Spacer() // Add space between buttons

                VStack {
                    Text("Move Arm")
                        .font(.largeTitle)
                        .padding(.bottom, 10)

                    Button(action: {
                        // Action for hand.draw button
                    }) {
                        Image(systemName: "hand.draw")
                            .font(.system(size: 100))
                            .padding(30)
                    }
                    .frame(width: 150, height: 150) // Set fixed size for the button
                    .clipShape(Circle()) // Make the button circular
                }

                Spacer() // Add space between buttons

                VStack {
                    Text("Follow EE")
                        .font(.largeTitle)
                        .padding(.bottom, 10)

                    Button(action: {
                        // Action for pencil button
                    }) {
                        Image(systemName: "pencil.and.outline")
                            .font(.system(size: 100))
                            .padding(30)
                    }
                    .frame(width: 150, height: 150) // Set fixed size for the button
                    .clipShape(Circle()) // Make the button circular
                }
            }
            .padding(.horizontal, 40) // Add horizontal padding to the HStack
        }
        .padding(.horizontal) // Padding for the entire VStack (optional)
    }
}




#Preview(windowStyle: .automatic) {
    ContentView()
    //HomeView()
        .environment(AppModel())
}





