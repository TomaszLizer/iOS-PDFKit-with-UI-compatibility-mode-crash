//
//  PDFKitView.swift
//  Test-PDFKit-SwiftUI
//
//  Created by Tomasz Lizer on 02/12/2025.
//

import SwiftUI
import PDFKit

struct PDFKitView: UIViewRepresentable {
    let url: URL
    let backgroundColor: Color?

    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.autoScales = true
        pdfView.displayMode = .singlePageContinuous
        pdfView.displayDirection = .vertical
        pdfView.isUserInteractionEnabled = true
        pdfView.usePageViewController(false)
        return pdfView
    }

    func updateUIView(_ pdfView: PDFView, context: Context) {
        if pdfView.document?.documentURL != url {
            pdfView.document = PDFDocument(url: url)
        }
        if let backgroundColor {
            pdfView.backgroundColor = UIColor(backgroundColor)
        }
    }
}
