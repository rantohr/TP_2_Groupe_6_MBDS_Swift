//
//  Countries.swift
//  TP2_Groupe_06
//
//  Created by mbds on 20/03/2021.
//

import Foundation
let countries = [
    Country(isoCode: "at", name: "Austria", continent: "Europe"),
    Country(isoCode: "be", name: "Belgium", continent: "Europe"),
    Country(isoCode: "de", name: "Germany", continent: "Europe"),
    Country(isoCode: "el", name: "Greece", continent: "Europe"),
    Country(isoCode: "fr", name: "France", continent: "Europe"),
    Country(isoCode: "mg", name: "Madagascar", continent: "Afrique"),
    Country(isoCode: "bd", name: "Bangladesh", continent: "Asie"),
]
let group = Dictionary(grouping: countries, by: {(element:Country)in
    return element.continent
})

var keysV = getKeys()
var values = getValues()

func getKeys() -> [String] {
    var ret = [String]()
    for (key, value) in group {
        ret.append(key)
    }
    return ret
}

func getValues() -> [[Country]] {
    var ret = [[Country]]()
    for (key, value) in group {
        ret.append(group[key] as! [Country])
    }
    return ret
}

