//
//  SplashScreenView.swift
//  HigherBlue
//
//  Created by Kensuke Fukutomi on 2024/09/08.
//

import Foundation
import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    @StateObject private var vm = LocationsViewModel()
    
    var body: some View {
        if isActive {
            LocationsView().environmentObject(vm)
        } else {
            VStack {
                Image("umich")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .opacity(opacity)
                    .scaleEffect(size)
                    .padding(.trailing, 2)
                VStack {
                    Image(systemName: "here.fill")
                        .font(.system(size:250))
                        .foregroundColor(.white)
                    Text("HigherBlue")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.leading, 2)
                        .padding()
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color.blue]),
                               startPoint: .top,
                               endPoint: .bottom).edgesIgnoringSafeArea(.all)
            )
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.2) {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
