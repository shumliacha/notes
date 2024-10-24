//
//  DetailView.swift
//  notes
//
//  Created by Kristina Litvinova on 08.10.2024.
//

import SwiftUI

struct DetailView: View {
    
    
    @State private var title = "Test title"
    @State private var content = "test"
    @State private var datastamp = "11:11 November 11"
    
    var body: some View {
        
        ZStack{
            
            RadialGradient(colors: [Color(red: 0.965, green: 0.965, blue: 0.97), .blue], center: .topLeading, startRadius: 600, endRadius: 100)
                .ignoresSafeArea()
            //would be cool to add animation for the gradient
            
            VStack(alignment: HorizontalAlignment.center){
                
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
                            .foregroundStyle(Color.black)
                            .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                            .background(.regularMaterial)
                            .clipShape(Capsule())
                    
                            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))

                    }
                
                    ZStack {
                        VStack{
                            //a spacer is ruining everything?
                            Text(content)
                                .font(.body)
                                .padding(EdgeInsets(top: 15, leading: 15, bottom: 5, trailing: 15))
                            Spacer()
                        }
                        
                    }
                    .frame(width: 370, alignment: .leading)
                    .background(Color.init(uiColor: .white))
                    .clipShape(RoundedRectangle(cornerRadius: 15.0))
                    .padding()
                
                Button {
                    print("Button pressed")
                } label: {
                    Text("Save")
                        .foregroundStyle(Color.white)
                    
                        .padding(EdgeInsets(top: 10, leading: 40, bottom: 10, trailing: 40))
                        .background(.blue)
                        .clipShape(Capsule())
                }


            }
                    
        }
                
    }

}


#Preview {
    DetailView()
}
