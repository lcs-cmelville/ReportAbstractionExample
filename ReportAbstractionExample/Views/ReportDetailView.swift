//
//  ReportDetailView.swift
//  ReportAbstractionExample
//
//  Created by Claire Melville on 2021-11-25.
//

import SwiftUI

struct ReportDetailView: View {
    
    //MARK: Stored Property
    let item: Report
    
    //MARK: computed propety
    var body: some View {
        ScrollView {
            VStack (spacing: 10){
                
                HStack{
                    Text("Name:")
                        .font(.title)
                        .bold()
                    Text(item.name)
                        .font(.title)
                        .underline()
                }
                .padding()
                
                HStack{
                    Text("Grade(%):")
                        .font(.title2)
                        .bold()
                    Text("\(item.grade)")
                        .font(.title2)
                }
                .padding()
                
                
                Text("Teacher Comments:")
                    .font(.title2)
                    .bold()
               
                    Text(item.comment)
                    .padding(.leading )
                
            }
        }
    }
}

struct ReportDetailView_Previews: PreviewProvider {
    static var previews: some View {
        // For the Item perameter, we supply, as an ardument, the first item from the listOfReports.
        ReportDetailView(item: listOfReports.first!)
            .preferredColorScheme(.dark)
    }
}
