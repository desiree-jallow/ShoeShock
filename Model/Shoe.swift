//
//  Shoe.swift
//  ShoeShock
//
//  Created by Desiree on 6/29/20.
//  Copyright © 2020 Desiree. All rights reserved.
//

import Foundation
struct Shoe {
    var title: String
    var price: String
    var imageName: String
    var description: String
    
    init(title: String, price: String, imageName: String, description: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
        self.description = description
    }
    
}

 let myShoes: [Shoe] = [
    Shoe(title: "Converse: Chuck Taylor All Star", price: "$49.95", imageName: "image_1", description: "The Converse Chuck Taylor All Star Low Sneaker is a high-impact statement-maker that will never go out of style. The low-top canvas silhouette, lace-up front, and a vulcanized rubber sole provide a great fit and easy everyday feel."),
    Shoe(title: "Clarks: Annadel Ivory Wedge Sandal", price: "$62.95", imageName: "image_2", description: "Create a sophisticated vibe with the Clarks Annadel Ivory Wedge Sandal. The hook-and-loop ankle strap offers an adjustable and secure fit, while the Cushion Soft™ technology and OrthoLite® footbed ensure moisture-wicking comfort for all-day wear."),
    Shoe(title: "Dr Martins: 14608-Eye Boot", price: "$149.95", imageName: "image_3", description: "This style icon includes all of the authentic Doc Martens touches that have made it a true original. Signature Airwairs leather upper is stiff out of the box and softens over time to conform to the shape of your foot." ),
    Shoe(title: "Naturalizer: Samantha D'Orsay Shoe", price: "$88.95", imageName: "image_4", description: "The sleek and sophisticated Naturalizer Samantha D'Orsay Shoes can be dressed up or dressed down, making them a versatile option in your shoe closet."),
    Shoe(title: "Vionic: Luciana Ankle Boot", price: "$159.95", imageName: "image_5", description: "The Vionic Luciana Ankle Boot is a charmer! Liven up your favorite looks in this chic and cozy bootie, flaunting perforated detailing for added flair."),
    Shoe(title: "Vionic: walker Sneaker", price: "$109.95", imageName: "image_6", description: "Designed to keep you moving with maximum comfort and support. Built-in Orthaheel motion-controlling footbed features a contoured arch support and a deep heel cup that realigns your stride so that you can achieve your fitness goals."),
    Shoe(title: "Toms: Julie Leather D'Orsay Flat", price: "$63.95", imageName: "image_7", description: "Let your feet do all the talking every time you step out wearing the TOMS Julie Leather D'Orsay Flat. This classic D'Orsay flat features a custom TOMS cushion insole that keeps your feet perfectly cushioned and at ease throughout the day."),
    Shoe(title: "Sarto: Graydon Slig Back Flat", price: "$98.95", imageName: "image_8", description: "The Sarto Graydon Slingback Flat is a pointed toe flat that will be your go-to for any occasion."),
    Shoe(title: "Rockport: Briah Perfed Slingback", price: "$84.95", imageName: "image_9", description: "From brunches at noon to parties at night, the Rockport Briah Perfed Slingback is ideal for any occasion. The TPR outsole on this wedge sandal provides support and stability so that you can stay at ease."),
    Shoe(title: "Toms: Majorca Cut-Out Sandal", price: "$57.95", imageName: "image_10", description: "With a leather wrapped heel and an inside zipper, TOMS Majorca Cut-Out Sandal is the perfect addition for your warm weather outfit.")]
