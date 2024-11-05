//
//  ContentView.swift
//  smiley
//
//  Created by Hyunsu Lim on 10/29/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            Circle()
                .foregroundStyle(LinearGradient(colors: [.yellow, .purple], startPoint: .bottomLeading, endPoint: .topTrailing))
            VStack {
                Spacer(minLength: 300)
                HStack {
                    Spacer()
                    Circle()
                        .frame(width: 50, height: 50)
                    Spacer(minLength: 10)
                    Circle()
                        .frame(width: 50, height: 50)
                    Spacer()
                }
                .foregroundStyle(.white)
                Spacer(minLength: 10)
                Path { path in
                    path.move(to: .init(x: 150, y: 100))
                    path.addCurve(
                        to: CGPoint(x: 250, y: 100),
                        control1: CGPoint(x: 150, y: 100),
                        control2: CGPoint(x: 200, y: 200))
                    path.addLine(to: .init(x: 200, y: 100))
                    path.closeSubpath()
                }
                .fill(.white)
                Spacer(minLength: 300)
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
