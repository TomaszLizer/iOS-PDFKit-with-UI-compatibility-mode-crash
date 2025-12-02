//
//  PrivacyNoticeView.swift
//  Test-PDFKit-SwiftUI
//
//  Created by Tomasz Lizer on 02/12/2025.
//


//
//  PrivacyNoticeView.swift
//  uPrivacyNotice
//
//  Created by Tomasz Lizer on 01/12/2025.
//  Copyright © 2025 dejamobile. All rights reserved.
//

import SwiftUI

public struct PrivacyNoticeView: View {
    private let url: URL
    private let customAction: () -> Void

    public init(
        url: URL,
        customAction: @escaping () -> Void
    ) {
        self.url = url
        self.customAction = customAction
    }

    public var body: some View {
        VStack {
            PDFKitView(url: url, backgroundColor: .white)
                .background(Color.white)
//                .navigationTitle(.PrivacyNotice.navigationTitle)
//                .navigationBarTitleDisplayMode(.large)
            Screen.links()
            Button(action: customAction) {
                Text("CUSTOM ACTION")
            }
        }
    }
}

#if DEBUG
#Preview {
    PrivacyNoticeView(url: URL(string: "TEST")!) {}
}
#endif
