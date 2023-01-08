//
//  ExpandListView.swift
//  ListStylesDemo
//
//  Created by RamiReddy on 08/01/23.
//

import SwiftUI

struct MenuItem: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var subMenuItems: [MenuItem]?
}

struct ExpandListView: View {
    var items = MenuItem.dummyData()

    var body: some View {
        
        
        List {
            OutlineGroup(items, children: \.subMenuItems) {  item in
                HStack {
                    Image(item.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)

                    Text(item.name)
                        .font(.system(.title3, design: .rounded))
                        .bold()
                }
            }
        }.listStyle(InsetGroupedListStyle())
        //.listStyle(.plain)
    }
}

struct ExpandListView_Previews: PreviewProvider {
    static var previews: some View {
        ExpandListView()
    }
}
extension MenuItem {
    static func dummyData() -> [MenuItem] {
        // list 1
        let list1: [MenuItem] = [MenuItem(name: "Hyderabad", image: "hyd_image"),
                                 MenuItem(name: "Bengalore", image: "bengalore-image"),
                                 MenuItem(name: "Chennai", image: "chennai-image"),
                                ]
       
        let list2: [MenuItem] = [MenuItem(name: "Hyderabad2", image: "hyd_image"),
                                 MenuItem(name: "Bengalore2", image: "bengalore-image"),
                                 MenuItem(name: "Chennai2", image: "chennai-image"),
                                ]
       
        let list3: [MenuItem] = [MenuItem(name: "Hyderabad3", image: "hyd_image"),
                                 MenuItem(name: "Bengalore3", image: "bengalore-image"),
                                 MenuItem(name: "Chennai3", image: "chennai-image",subMenuItems:list1),
                                ]
        
        let items: [MenuItem] = [MenuItem(name: "Hyd", image: "hyd_image", subMenuItems: list1),
                                 MenuItem(name: "Delhi", image: "chennai-image", subMenuItems: list2), MenuItem(name: "Beng", image: "bengalore-image", subMenuItems: list3)
                                ]
        
        
        return items
    }
}
