//
//  Cart.swift
//  ProductListDemo
//
//  Created by Ivan Konukhov on 06.08.24.
//

import Foundation

// Класс для управления корзиной
class Cart: ObservableObject {
    @Published var items: [Product] = []
    
    // Функция для добавления товаров в корзину
    func addToCart(product: Product) {
        items.append(product)
    }
}
