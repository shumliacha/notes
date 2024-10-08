//
//  DetailView.swift
//  notes
//
//  Created by Kristina Litvinova on 08.10.2024.
//

import SwiftUI

struct DetailView: View {
    @State private var title = "Title"
    @State private var textField = "vbkuvbhgv kgv kuhvkuu uy u uoy ouyg uyv uyvyviyv uyvoov"
    @State private var timestamp = "14:59"
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    LinearGradient(colors: [Color(red: 0.93, green: 0.86, blue: 0.74), Color(red: 0.8 , green: 0.68, blue: 0.5)], startPoint: .top, endPoint: .bottom)
                )
                
            
            VStack {
                Text(timestamp)
                    .font(.caption)
                Text(title)
                Text(textField)
            }
        }
    }
}

#Preview {
    DetailView()
}
