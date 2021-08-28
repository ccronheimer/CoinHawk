//
//  NetworkingManager.swift
//  CoinHawk
//
//  Created by Cameron Cronheimer on 2021-08-23.
//

import Foundation
import Combine

class NetworkingManager {
    
    enum NetworkingError: LocalizedError {
        case badURLRespone(url: URL)
        case unknown
        
        var errorDescription: String? {
            switch self {
            case .badURLRespone(url: let url): return "[🔥] Bad response from URL: \(url)"
            case .unknown: return "[⚠️] Unknown error occured."
            }
        }
    }
    static func download(url: URL) -> AnyPublisher<Data,Error>{
        
       return URLSession.shared.dataTaskPublisher(for: url)
            .tryMap({ try handleURLResponse(output: $0, url: url)})
            .retry(3)
            .eraseToAnyPublisher()
    }
    
    static func handleURLResponse(output: URLSession.DataTaskPublisher.Output, url: URL) throws -> Data {
        guard let respone = output.response as? HTTPURLResponse,
        respone.statusCode >= 200 && respone.statusCode < 300 else {
            throw NetworkingError.badURLRespone(url: url)
        }
        return output.data
    }
    
    static func handleCompletion(completion: Subscribers.Completion<Error>) {
        switch completion {
        case .finished:
            break
        case .failure(let error):
            print(error.localizedDescription)
        }
    }
}
