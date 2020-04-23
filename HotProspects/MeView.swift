//
//  MeView.swift
//  HotProspects
//
//  Created by Al Amin on 20/4/20.
//  Copyright © 2020 Al Amin. All rights reserved.
//

import SwiftUI
import CoreImage.CIFilterBuiltins

struct MeView: View {
    @State private var name = "Alamin"
    @State private var emailAddres = "alamin@yahoo.com"
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    var body: some View {
        NavigationView {
            VStack {
                TextField("Name", text: $name)
                    .textContentType(.name)
                    .font(.title)
                    .padding(.horizontal)
                
                TextField("Email Address", text: $emailAddres)
                    .textContentType(.emailAddress)
                    .font(.title)
                    .padding(.horizontal)
                Image(uiImage: generateQRCode(from: "\(name)\n\(emailAddres)"))
                    .interpolation(.none)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                
                Spacer()
            }
        .navigationBarTitle("Your Code")
        }
    }
    
    func generateQRCode(from string: String) -> UIImage {
        let data = Data(string.utf8)
        filter.setValue(data, forKey: "inputMessage")

       if let outputImage = filter.outputImage {
            if let cgimg = context.createCGImage(outputImage, from: outputImage.extent) {
                return UIImage(cgImage: cgimg)
            }
        }

        return UIImage(systemName: "xmark.circle") ?? UIImage()
    }
}

struct MeView_Previews: PreviewProvider {
    static var previews: some View {
        MeView()
    }
}
