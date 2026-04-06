//
//  SegmentSectionView.swift
//  Titanic
//
//  Created by Emirhan Gökçe on 23.08.2025.
//

import SwiftUI

struct SegmentSectionView: View {
    @Binding var selected: String
    let options: [String]
    let sectionTitle : String
    let prompt : String
    
    
    var body: some View {
        Section(sectionTitle) {
            Text(prompt)
                .fontWeight(.semibold)
            //MARK: Picker ne işe yarıyor
            Picker(prompt, selection: $selected){
                ForEach(options, id: \.self){ currentSelected in
                    Text(currentSelected)
                        .tag(currentSelected)
                }
            }
            .pickerStyle(.segmented)
        }
    }
}

#Preview {
    Form {
        SegmentSectionView(
            selected: .constant("Second Class"),
            options: TitanicModel.passengerClasses,
            sectionTitle: "Passenger Class",
            prompt: "What passenger class are you?"
        )
        
        SegmentSectionView(
            selected: .constant("Cherbourg"),
            options: TitanicModel.ports,
            sectionTitle: "Passenger Class",
            prompt: "What port did you embark from?"
        )
        

    }
}
