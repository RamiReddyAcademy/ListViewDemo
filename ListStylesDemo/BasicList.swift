//
//  BasicList.swift
//  ListStylesDemo
//
//  Created by RamiReddy on 08/01/23.
//

import SwiftUI

struct BasicList: View {
    var body: some View {
        NavigationStack{
            
            
            List{
                
                Section{
                    Text("About")
                    Text("Settings")
                    Text("General")
                    
                    
                }header: {
                     Text("My Header for section 1")
                }footer: {
                    Text("My Footer for section 1")
                }
                
                Section{
                    ForEach(0..<100) { _ in
                        CustomCell()
                            .foregroundColor(.green)
                    }
                    
                }
               
                
                
            }.listStyle(.insetGrouped)
                .navigationTitle("List")
                .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct BasicList_Previews: PreviewProvider {
    static var previews: some View {
        BasicList()
    }
}
