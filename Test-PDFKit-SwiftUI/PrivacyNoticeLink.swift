//
//  PrivacyNoticeLink.swift
//  Test-PDFKit-SwiftUI
//
//  Created by Tomasz Lizer on 02/12/2025.
//

import SwiftUI

public struct PrivacyNoticeLink: View {
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
        NavigationLink {
            PrivacyNoticeView(url: url, customAction: customAction)
        } label: {
            Text(.PrivacyNotice.linkText)
                .foregroundStyle(Color.black)
                .underline()
        }
    }
}
