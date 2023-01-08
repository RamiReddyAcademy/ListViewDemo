//
//  CustomCell.swift
//  ListStylesDemo
//
//  Created by RamiReddy on 08/01/23.
//

import SwiftUI

struct CustomCell: View {
    var body: some View {
       HStack {
            Image(systemName: "person.crop.circle")
                .resizable()
                .foregroundColor(.red)
                .frame(width: 80,height: 80,alignment: .center)
            .padding(.all)
            Text("Name")
        }
        
        
    }
}

struct CustomCell_Previews: PreviewProvider {
    static var previews: some View {
        CustomCell()
    }
}
