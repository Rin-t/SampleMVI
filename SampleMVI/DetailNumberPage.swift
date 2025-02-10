//
//  DetailNumberPage.swift
//  SampleMVI
//
//  Created by Rin on 2025/02/09.
//

import SwiftUI

struct DetailNumberPage: View {
    
    let number: Int
    
    var body: some View {
        Text("\(number)")
    }
}

#Preview {
    DetailNumberPage(number: 5)
}
