//
// Created by James Coggan on 07/10/2016.
// Copyright (c) 2016 James Coggan. All rights reserved.
//

import Foundation
import RxSwift
import Alamofire
import AlamofireObjectMapper

class RestClient {
    func requestUser() -> Observable<User> {
        return Observable.create {
            observer in
            let URL = "https://api.github.com/users/jamescoggan"
            let request = Alamofire.request(URL).responseObject {
                (response: DataResponse<User>) in

                if let user = response.result.value {
                    observer.on(.next(user))
                    observer.on(.completed)
                } else if let error = response.result.error {
                    observer.onError(error)
                }
            }

            return AnonymousDisposable {
                request.cancel()
            }
        }
    }
}
