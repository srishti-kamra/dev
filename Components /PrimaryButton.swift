//
//  PrimaryButton.swift
//  sim
//
//  Created by Srishti Kamra  on 12/5/22.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var backgroundcolor = Color("AccentColor")
    var body: some View {
        Text( text)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(text: "next")
    }
}
