//
//  ExportToPDF.swift
//  Lebenslauf
//
//  Created by Simon Schöpke on 27.02.21.
//

import SwiftUI

func exportToPDF() {
    
    let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    let outputFileURL = documentDirectory.appendingPathComponent("SwiftUI.pdf")
    
    //Normal with
    let width: CGFloat = 8.5 * 72.0
    //Estimate the height of your view
    let height: CGFloat = 1000
    let charts = ContentView()
    
    let pdfVC = UIHostingController(rootView: charts)
    pdfVC.view.frame = CGRect(x: 0, y: 0, width: width, height: height)
    
    //Render the view behind all other views
    let rootVC = UIApplication.shared.windows.first?.rootViewController
    rootVC?.addChild(pdfVC)
    rootVC?.view.insertSubview(pdfVC.view, at: 0)
    
    //Render the PDF
    let pdfRenderer = UIGraphicsPDFRenderer(bounds: CGRect(x: 0, y: 0, width: 8.5 * 72.0, height: height))
    
    DispatchQueue.main.async {
        do {
            try pdfRenderer.writePDF(to: outputFileURL) { (context) in
                context.beginPage()
                pdfVC.view.layer.render(in: context.cgContext)
            }
            print("wrote file to: \(outputFileURL.path)")
        } catch {
            print("Could not create PDF file: \(error.localizedDescription)")
        }
    }
    
    pdfVC.removeFromParent()
    pdfVC.view.removeFromSuperview()
}
