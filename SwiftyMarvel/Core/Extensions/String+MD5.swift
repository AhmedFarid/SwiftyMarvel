//
//  String+MD5.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation
import CryptoKit

extension String {
    var md5: String {
        let data = Data(self.utf8)
        let digest = Insecure.MD5.hash(data: data)
        return digest.map { String(format: "%02x", $0) }.joined()
    }
}
