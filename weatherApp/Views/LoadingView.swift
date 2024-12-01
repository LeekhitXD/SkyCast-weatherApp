//
//  ProgressView.swift
//  weatherApp
//
//  Created by Leekhit Patwal on 27/11/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
      ProgressView()
            .progressViewStyle(CircularProgressViewStyle (tint: .black))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

#Preview {
    LoadingView()
}
