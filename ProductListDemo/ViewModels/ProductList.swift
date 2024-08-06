//
//  ProductList.swift
//  ProductListDemo
//
//  Created by Ivan Konukhov on 06.08.24.
//

import Foundation

// Класс для управления списком продуктов
class ProductListViewModel: ObservableObject {
    @Published var products: [Product] = Product.mockProducts
}
