//
//  FabButton.swift
//  DiaryApp
//
//  Created by Oğuzhan Deniz on 14.09.2022.
//

import SwiftUI

struct FabButtonView: View {
    
    var body: some View {
        
        Text("+")
            .foregroundColor(.white)
            .font(.title)
            .padding()
            .background(Color.orange)
            .mask(Circle())
    }
    
}

struct FabButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FabButtonView()
    }
}
