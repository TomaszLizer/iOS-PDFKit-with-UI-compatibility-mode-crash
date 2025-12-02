//
//  PrivacyNoticeLink.swift
//  Test-PDFKit-SwiftUI
//
//  Created by Tomasz Lizer on 02/12/2025.
//

import SwiftUI

public struct PrivacyNoticeLink: View {
    private let url: URL

    public init(url: URL) {
        self.url = url
    }

    public var body: some View {
        NavigationLink {
            PrivacyNoticeView(url: url)
        } label: {
            Text(.PrivacyNotice.linkText)
                .foregroundStyle(Color.black)
                .underline()
        }
    }
}
