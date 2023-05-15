//
//  HomeView.swift
//  WastraWear
//
//  Created by Abiyyu Firmansyah on 31/03/23.
//

import SwiftUI

struct BoxItem: Identifiable{
    let id = UUID()
    let height: CGFloat
    let imgString: String
    
}


let gridItems = [
    BoxItem(height: 300, imgString: "1"),
    BoxItem(height: 254, imgString: "2"),
    BoxItem(height: 353, imgString: "3"),
    BoxItem(height: 352, imgString: "4"),
    BoxItem(height: 250, imgString: "5"),
    BoxItem(height: 352, imgString: "6"),
    BoxItem(height: 334, imgString: "7"),
    BoxItem(height: 115, imgString: "8"),
    BoxItem(height: 313, imgString: "9"),
    BoxItem(height: 288, imgString: "10"),
    BoxItem(height: 252, imgString: "11"),
    BoxItem(height: 119, imgString: "12"),
    BoxItem(height: 211, imgString: "13"),
    BoxItem(height: 341, imgString: "14"),
    BoxItem(height: 179, imgString: "15"),
    BoxItem(height: 183, imgString: "16"),
]

struct HomeView: View {
    
    struct Column: Identifiable{
        let id = UUID()
        var gridItem = [BoxItem]()
    }
    
    let columns: [Column]
    
    
    let spacing: CGFloat
    let horizontalPadding: CGFloat
    
    //Grid Layout Calculation
    init(gridItems: [BoxItem], numOfColumns: Int, spacing: CGFloat = 20, horizontalPadding: CGFloat = 20){
        self.spacing = spacing
        self.horizontalPadding = horizontalPadding
        
        var columns = [Column]()
        for _ in 0 ..< numOfColumns {
            columns.append(Column())
        }
        
        //
        var columnsHeight = Array<CGFloat>(repeating: 0, count: numOfColumns)
        
        for gridItem in gridItems {
            var smallestColumnIndex = 0
            var smallestHeight = columnsHeight.first!
            for i in 1 ..< columnsHeight.count {
                let curHeight = columnsHeight[i]
                if curHeight < smallestHeight{
                    smallestHeight = curHeight
                    smallestColumnIndex = i
                }
            }
            
            columns[smallestColumnIndex].gridItems.append(gridItem)
            columnsHeight[smallestColumnIndex] += gridItem.height
        }
        
        self.columns = columns
    }
    
    
    var body: some View {
        
        HStack(alignment: .top, spacing: spacing){
            ForEach(columns) { column in
                LazyVStack(spacing: spacing){
                    ForEach(column.gridItems) { gridItem in
                        
                        getItemView(gridItem: gridItem)
                    }
                }
            }
        }
            .padding(.horizontal, horizontalPadding)
        }
        
        func getItemView(gridItem: BoxItem) -> some View {
            ZStack {
                            GeometryReader { reader in
                                Image(gridItem.imgString)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: reader.size.width,
                                           height: reader.size.height,
                                           alignment: .center
                                           )
                            }
                        }

                        .frame(height: gridItem.height)
                        .frame(maxWidth: .infinity)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
