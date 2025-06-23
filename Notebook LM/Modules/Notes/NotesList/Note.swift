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

extension Note: Hashable {
    public static func == (lhs: Note, rhs: Note) -> Bool {
        lhs.id == rhs.id
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension Note {
    var thumbnailImage: UIImage? {
        guard let data = imageData,
              let image = UIImage(data: data) else { return nil }
        
        let size = CGSize(width: 60, height: 60)
        let renderer = UIGraphicsImageRenderer(size: size)
        return renderer.image { _ in
            image.draw(in: CGRect(origin: .zero, size: size))
        }
    }
}
