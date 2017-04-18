//
//  WorkDir.swift
//  HelloVapor
//
//  Created by AtronJia on 2017/4/18.
//
//


#if os(Linux)
let workDir = "./"
#else
var workDir: String {
    let parent = #file.characters.split(separator: "/").map(String.init).dropLast().joined(separator: "/")
    let path = "/\(parent)/.."
    return path
    }
#endif
