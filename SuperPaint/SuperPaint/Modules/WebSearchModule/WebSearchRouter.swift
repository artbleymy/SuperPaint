//
//  WebSearchRouter.swift
//  SuperPaint
//
//  Created by Иван Медведев on 08/01/2020.
//  Copyright © 2020 Fixiki. All rights reserved.
//

import UIKit

final class WebSearchRouter
{
	weak var view: IWebSearchViewController?
	private let factory: ModuleFactory

	init(factory: ModuleFactory) {
		self.factory = factory
	}

	func inject(view: IWebSearchViewController) {
		self.view = view
	}
}

extension WebSearchRouter: IWebSearchRouter
{
	func pushEditorModule(image: UIImage) {
		let vc = self.factory.createImageEditorModule(id: UUID().uuidString, image: image, isNewImage: true)
		self.view?.navController?.pushViewController(vc, animated: true)
	}
}
