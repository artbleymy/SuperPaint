//
//  IDatabaseRepository.swift
//  SuperPaint
//
//  Created by Иван Медведев on 23/12/2019.
//  Copyright © 2019 Fixiki. All rights reserved.
//

import Foundation

protocol IDatabaseRepository
{
	var imagesManager: ICDImageModelManager { get }

	func loadImages(completion: (ImagesResult) -> Void)
	func saveImage(_ image: ImageModel)
	func deleteImages(_ images: [ImageModel])
	func saveContext()
}
