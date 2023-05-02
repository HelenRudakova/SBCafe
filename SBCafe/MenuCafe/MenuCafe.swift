//
//  MenuCafe.swift
//  SBCafe
//
//  Created by Елена Рудакова on 02.05.2023.
//

struct Menu {
    let dishMenu: String
    let priceMenu: String
    
    var title: String {
        "\(dishMenu) - \(priceMenu)"
    }
    static func getMenuList() -> [Menu] {
        [
            Menu(dishMenu: "Печеные яблоки", priceMenu: "500р"),
            Menu(dishMenu: "Розочки из яблок", priceMenu: "400р"),
            Menu(dishMenu: "Яблочный сидр", priceMenu: "300р"),
            Menu(dishMenu: "Утка фаршированная с яблоками", priceMenu: "1500р"),
            Menu(dishMenu: "Яблоко в вишневой карамели", priceMenu: "300р"),
            Menu(dishMenu: "Яблочные пончики в кляре", priceMenu: "550р"),
            Menu(dishMenu: "Яблочный сок", priceMenu: "200р"),
            Menu(dishMenu: "Яблочный штрудель с мороженым", priceMenu: "500р")
        ]
    }
}
