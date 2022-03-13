//
//  cardview.swift
//  siri
//
//  Created by Srujan on 02/03/22.
//

import SwiftUI

struct cardview: View {
    @Binding var symbol:String
    @Binding var background:Color
    
    var body: some View {
        Image(symbol).resizable()
            .aspectRatio(1, contentMode: .fit)
            .background(background.opacity(0.5))
            .cornerRadius(20)
    }
}

struct cardview_Previews: PreviewProvider {
    static var previews: some View {
        cardview(symbol: Binding.constant("lemon"), background: Binding.constant(Color.green))
    }
}
