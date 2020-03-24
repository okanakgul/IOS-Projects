//
//  VegetableDataSource.swift
//  Healty & Fit
//
//  Created by Ege Melis Ayanoğlu on 6.11.2019.
//  Copyright © 2019 Kazim Okan AKGÜL. All rights reserved.
//

import Foundation

class VegetableDataSource{
    var vegetableArray: [Blessing] = []
    
    init() {
        vegetableArray.append(Blessing(name: "Broccoli", imageName: "Broccoli.png", calories: 26,
                                       briefInfo: "Broccoli is an edible green plant in the cabbage family (family Brassicaceae, genus Brassica) whose large flowering head and stalk is eaten as a vegetable. The word broccoli comes from the Italian plural of broccolo, which means the flowering crest of a cabbage, and is the diminutive form of brocco, meaning small nail or sprout"))
        vegetableArray.append(Blessing(name: "Carrot", imageName: "Carrot.png", calories: 41,
                                       briefInfo: "The carrot (Daucus carota subsp. sativus) is a root vegetable, usually orange in colour, though purple, black, red, white, and yellow cultivars exist."))
        vegetableArray.append(Blessing(name: "Celery", imageName: "Celery.png", calories: 42,
                                       briefInfo: "Celery is a marshland plant in the family Apiaceae that has been cultivated as a vegetable since antiquity. Celery has a long fibrous stalk tapering into leaves. Depending on location and cultivar, either its stalks, leaves or hypocoty are eaten and used in cooking. Celery seed is also used as a spice and its extracts have been used in herbal medicine."))
        vegetableArray.append(Blessing(name: "Corn", imageName: "Corn.png", calories: 96,
                                       briefInfo: "Sweet corn is a hybridized variety of maize with a high sugar content. Sweet corn is the result of a naturally occurring recessive mutation in the genes which control conversion of sugar to starch inside the endosperm of the corn kernel. "))
        vegetableArray.append(Blessing(name: "Cucumber", imageName: "Cucumber.png", calories: 15,
                                       briefInfo: "Cucumber is a widely cultivated plant in the gourd family, Cucurbitaceae. It is a creeping vine that bears cucumiform fruits that are used as vegetables. There are three main varieties of cucumber: slicing, pickling, and seedless" ))
        vegetableArray.append(Blessing(name: "Lettuce", imageName: "Lettuce.png", calories: 16,
                                       briefInfo: "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled."))
        vegetableArray.append(Blessing(name: "Mushroom", imageName: "Mushroom.png", calories: 22,
                                       briefInfo: "A mushroom, or toadstool, is the fleshy, spore-bearing fruiting body of a fungus, typically produced above ground, on soil, or on its food source."))
        vegetableArray.append(Blessing(name: "Onion", imageName: "Onion.png", calories: 40,
                                       briefInfo: "The onion, also known as the bulb onion or common onion, is a vegetable that is the most widely cultivated species of the genus Allium. Its close relatives include the garlic, shallot, leek, chive and Chinese onion."))
        vegetableArray.append(Blessing(name: "Potato", imageName: "Potato.png", calories: 86,
                                       briefInfo: "The potato is a root vegetable, a starchy tuber of the plant Solanum tuberosum, and the plant itself, a perennial in the family Solanaceae, native to the Americas."))
        vegetableArray.append(Blessing(name: "Spinach", imageName: "Spinach.png", calories: 17,
                                       briefInfo: "Spinach is a leafy green flowering plant native to central and western Asia. It is of the order Caryophyllales, family Amaranthaceae, subfamily Chenopodioideae. Its leaves are a common edible vegetable consumed either fresh, or after storage using preservation techniques by canning, freezing, or dehydration. "))
    }
}
