//
//  main.swift
//  ConsoleSample
//
//  Created by 川崎隆介 on 2016/10/25.
//  Copyright © 2016年 codable. All rights reserved.
//

import Foundation

do {
    let str = try String(contentsOfFile: "Foo.bar",
                           encoding: String.Encoding.utf8)
}
catch let error as NSError {
    print(error.localizedDescription)
}

enum AwfulError: Error {
    case Bad
    case Worse
    case Terrible
}

func doDangerousStuff() throws {
    throw AwfulError.Worse
}

do {
    try doDangerousStuff()
}
catch AwfulError.Bad {
    // Deal with badness.
    print("Bad")
}
catch  {
    // Unexpected error!
    print("Other")
}
