//
//  GFError.swift
//  GHFollower
//
//  Created by Mac pro on 21/08/25.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Pla]ease try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection"
    case invalidResponse = "Invalid response from server. Please try again."
    case invalidData = "The data received from the server is invalid. Please try again."
}
