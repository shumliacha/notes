//
//  DetailView.swift
//  notes
//
//  Created by Kristina Litvinova on 08.10.2024.
//

import SwiftUI

struct DetailView: View {
    
    
    @State private var title = "Test title"
    @State private var content = "test content"
    @State private var datastamp = "11:11 November 11"
    
    var body: some View {
        ZStack{
            
            VStack(alignment: HorizontalAlignment.leading){
                HStack {
                    Text(title)
                        .font(.title)
                        .padding(EdgeInsets(top: 30, leading: 15, bottom: 0, trailing: 15))
                Spacer()
                }
                
                HStack{
                    Spacer()
                    Text(datastamp)
                        .font(.caption)
                        .padding(EdgeInsets(top: 0, leading: 15, bottom: 5, trailing: 15))
                        .foregroundStyle(Color.gray)
                }
                
                Text(content)
                    .font(.body)
                    .padding(EdgeInsets(top: 10, leading: 15, bottom: 5, trailing: 15))
                
                Spacer()
            }

        }
    }
       
}

#Preview {
    DetailView()
}
