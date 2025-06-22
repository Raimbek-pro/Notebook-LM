//
//  Note.swift
//  Notebook LM
//
//  Created by Райымбек Омаров on 16.06.2025.
//
import UIKit
import SwiftData

@Model
class Note  {
    var text: String?
    var imageData : Data?
    init(id: UUID=UUID(), text: String? = nil, image: UIImage? = nil) {
  
        self.text = text
        if let image = image {
            self.imageData = image.jpegData(compressionQuality: 0.8)
        }
        
        
    }
    var uiImage : UIImage? {
        guard let imageData = imageData else { return nil }
        return UIImage(data: imageData)
    }

}
