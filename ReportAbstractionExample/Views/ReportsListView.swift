//
//  ReportsListView.swift
//  ReportAbstractionExample
//
//  Created by Russell Gordon on 2021-11-23.
//

import SwiftUI

struct ReportsListView: View {
    var body: some View {
        List {
            
            //Replacing the concrete list of names with an abstraction
            // The absraction is using a ForEach structure to iterate over the list from the model
            //This (when the app is run) builds the list of names
            //"List of reports" is the input list
            //the ForEach, with each loop or iteration, places a new item from the list into "currentReport"
            ForEach(listOfReports) { currentReport in
                Text(currentReport.name)
            }
        }
        .navigationTitle("Reports")
        
    }

}

struct ReportsListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ReportsListView()
        }
    }
}
