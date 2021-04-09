//
//  ApiCall.swift
//  RepoSearch
//
//  Created by Jędrzej Kuś on 02/04/2021.
//

import SwiftUI

class GitHubApi {
    func fetchData(for text: String, completion: @escaping ([Repository]) -> ()) {
        
        if let url = URL(string: "https://api.github.com/search/repositories?q=\(text)") {
            
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                
                if error == nil {
                    let decoder = JSONDecoder()
                    
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Repositories.self, from: safeData)
                            
                            DispatchQueue.main.async {
                                let repository = results.items
                                completion(repository)
                                
                                if testVersion == true { print("ApiCall result: \(repository)") }
                            } //: QUEUE
                        } catch {
                            print(error)
                        } //: CATCH
                    } //: IF
                } //: ERROR
            } //: SESSION
            task.resume()
        } //: IF
    } //: FUNC
}
