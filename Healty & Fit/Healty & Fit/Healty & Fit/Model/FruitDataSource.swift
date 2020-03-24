//
//  FruitDataSource.swift
//  Healty & Fit
//
//  Created by Ege Melis Ayanoğlu on 6.11.2019.
//  Copyright © 2019 Kazim Okan AKGÜL. All rights reserved.
//

import Foundation

class FruitDataSource{
    var fruitArray: [Blessing] = []
    
    init() {
        fruitArray.append(Blessing(name: "Apple", imageName: "Apple.png", calories: 52,
                                   briefInfo: "An apple is a sweet, edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today."))
        fruitArray.append(Blessing(name: "Cherry", imageName: "Cherry.png", calories: 63,
                                   briefInfo: "A cherry is the fruit of many plants of the genus Prunus, and is a fleshy drupe (stone fruit)."))
        fruitArray.append(Blessing(name: "Grape", imageName: "Grape.png", calories: 69,
                                   briefInfo: "A grape is a fruit, botanically a berry, of the deciduous woody vines of the flowering plant genus Vitis."))
        fruitArray.append(Blessing(name: "kiwi", imageName: "kiwi.png", calories: 61,
                                   briefInfo: "Kiwifruit (often shortened to kiwi outside Australia and New Zealand), or Chinese gooseberry, is the edible berry of several species of woody vines in the genus Actinidia."))
        fruitArray.append(Blessing(name: "Melon", imageName: "Melon.png", calories: 28,
                                   briefInfo: "A melon is any of various plants of the family Cucurbitaceae with sweet edible, fleshy fruit. The word melon can refer to either the plant or specifically to the fruit. Botanically, a melon is a kind of berry, specifically a pepo. "))
        fruitArray.append(Blessing(name: "Orange", imageName: "Orange.png", calories: 46,
                                   briefInfo: "The orange is the fruit of the citrus species Citrus × sinensis in the family Rutaceae, native to China.[1] It is also called sweet orange, to distinguish it from the related Citrus × aurantium, referred to as bitter orange."))
        fruitArray.append(Blessing(name: "Peach", imageName: "Peach.png", calories: 39,
                                   briefInfo: "The peach is a deciduous tree native to the region of Northwest China between the Tarim Basin and the north slopes of the Kunlun Mountains, where it was first domesticated and cultivated.[3] It bears an edible juicy fruit called a peach or a nectarine."))
        fruitArray.append(Blessing(name: "Pear", imageName: "Pear.png", calories: 57,
                                   briefInfo: "The pear tree and shrub are a species of genus Pyrus, in the family Rosaceae, bearing the pomaceous fruit of the same name. Several species of pear are valued for their edible fruit and juices while others are cultivated as trees."))
        fruitArray.append(Blessing(name: "Strawberry", imageName: "Strawberry.png", calories: 32,
                                   briefInfo: "The strawberry is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness."))
        fruitArray.append(Blessing(name: "Watermelon", imageName: "Watermelon.png", calories: 30,
                                   briefInfo: "Citrullus lanatus is a plant species in the family Cucurbitaceae, a vine-like (scrambler and trailer) flowering plant originating in West Africa. It is cultivated for its fruit."))
    }
}


