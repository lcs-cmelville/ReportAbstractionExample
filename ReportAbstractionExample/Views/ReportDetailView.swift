//
//  ReportDetailView.swift
//  ReportAbstractionExample
//
//  Created by Russell Gordon on 2021-11-23.
//

import SwiftUI

// A structure named "ReportDetailView"
struct ReportDetailView: View {
    
    // MARK: Stored properties
    let thisReport: Report
    
    // MARK: Computed properties
    var body: some View {
        ScrollView {
            VStack {
                Text(thisReport.name)
                Text("\(thisReport.grade)")
                Text(thisReport.comment)
            }
        }
    }
}

struct ReportDetailView_Previews: PreviewProvider {
    static var previews: some View {
        // Because there is a stored property named "thisReport"
        // in ReportDetailView...
        //
        // ... to create an INSTANCE of ReportDetailView...
        //
        // ... we must provide an instance of the Report type
        ReportDetailView(thisReport: listOfReports.first!)
    }
}
