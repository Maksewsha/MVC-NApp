//
//  GetCommentResponse.swift
//  MVC-NApp
//
//  Created by admin on 04.08.2022.
//

import Foundation

struct GetCommentResponse{
    typealias JSON = [[String : AnyObject]]
    let comments: [Comment]
    
    init(json: Any) throws {
        guard let array = json as? JSON else { throw NetworkError.failInternetError }
        var comments = [Comment]()
        for dict in array{
            guard let comment = Comment(dict: dict) else { continue }
            comments.append(comment)
        }
        self.comments = comments
    }
}
