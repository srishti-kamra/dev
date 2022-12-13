//
//  Extension.swift
//  sim
//
//  Created by Srishti Kamra  on 12/5/22.
//

import Foundation
import SwiftUI

// Custom modifier to call this title instead of adding three modifiers every time we create the title text.
extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
