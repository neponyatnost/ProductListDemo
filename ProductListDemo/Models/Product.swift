//
//  Product.swift
//  ProductListDemo
//
//  Created by Ivan Konukhov on 06.08.24.
//

import Foundation

struct Product: Identifiable {
    let id: UUID
    let name: String
    let imageName: String
    let currentPrice: Double
    let rating: Double
    let isFavorite: Bool
    let oldPrice: Double?
    let discountLabel: String?
    let weight: Double?
    let unit: String?
}

extension Product {
    
    static let mockProducts: [Product] = [
        Product(
            id: UUID(),
            name: "сыр Ламбер 500/0",
            imageName: "lamber",
            currentPrice: 99.90,
            rating: 4.1,
            isFavorite: false,
            oldPrice: 199.0,
            discountLabel: "Удар по ценам",
            weight: 230,
            unit: "г"
        ),
        Product(
            id: UUID(),
            name: "сыр Ламбер 500/0",
            imageName: "lamber",
            currentPrice: 99.90,
            rating: 4.1,
            isFavorite: false,
            oldPrice: 199.0,
            discountLabel: "Удар по ценам",
            weight: 230,
            unit: "г"
        ),
        Product(
            id: UUID(),
            name: "сыр Ламбер 500/0",
            imageName: "lamber",
            currentPrice: 99.90,
            rating: 4.1,
            isFavorite: false,
            oldPrice: 199.0,
            discountLabel: "Удар по ценам",
            weight: 230,
            unit: "г"
        ),
        Product(
            id: UUID(),
            name: "сыр Ламбер 500/0",
            imageName: "lamber",
            currentPrice: 99.90,
            rating: 4.1,
            isFavorite: false,
            oldPrice: 199.0,
            discountLabel: "Удар по ценам",
            weight: 230,
            unit: "г"
        ),
        Product(
            id: UUID(),
            name: "сыр Ламбер 500/0",
            imageName: "lamber",
            currentPrice: 99.90,
            rating: 4.1,
            isFavorite: false,
            oldPrice: 199.0,
            discountLabel: "Удар по ценам",
            weight: 230,
            unit: "г"
        ),
        Product(
            id: UUID(),
            name: "сыр Ламбер 500/0",
            imageName: "lamber",
            currentPrice: 99.90,
            rating: 4.1,
            isFavorite: false,
            oldPrice: 199.0,
            discountLabel: "Удар по ценам",
            weight: 230,
            unit: "г"
        ),
        Product(
            id: UUID(),
            name: "сыр Ламбер 500/0",
            imageName: "lamber",
            currentPrice: 99.90,
            rating: 4.1,
            isFavorite: false,
            oldPrice: 199.0,
            discountLabel: "Удар по ценам",
            weight: 230,
            unit: "г"
        ),
        Product(
            id: UUID(),
            name: "сыр Ламбер 500/0",
            imageName: "lamber",
            currentPrice: 99.90,
            rating: 4.1,
            isFavorite: false,
            oldPrice: 199.0,
            discountLabel: "Удар по ценам",
            weight: 230,
            unit: "г"
        ),
        Product(
            id: UUID(),
            name: "сыр Ламбер 500/0",
            imageName: "lamber",
            currentPrice: 99.90,
            rating: 4.1,
            isFavorite: false,
            oldPrice: 199.0,
            discountLabel: "Удар по ценам",
            weight: 230,
            unit: "г"
        ),
        Product(
            id: UUID(),
            name: "сыр Ламбер 500/0",
            imageName: "lamber",
            currentPrice: 99.90,
            rating: 4.1,
            isFavorite: false,
            oldPrice: 199.0,
            discountLabel: "Удар по ценам",
            weight: 230,
            unit: "г"
        ),
    ]
}
