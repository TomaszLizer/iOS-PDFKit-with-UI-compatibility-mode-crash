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

    public init(url: URL) {
        self.url = url
    }

    public var body: some View {
        PDFKitView(url: url, backgroundColor: .white)
            .background(Color.white)
            .navigationTitle(.PrivacyNotice.navigationTitle)
            .navigationBarTitleDisplayMode(.large)
    }
}

#if DEBUG
#Preview {
    PrivacyNoticeView(url: URL(string: "TEST")!)
}
#endif
