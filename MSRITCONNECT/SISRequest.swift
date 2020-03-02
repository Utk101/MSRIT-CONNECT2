//
//  SISRequest.swift
//  MSRIT CONNECT
//
//  Created by Apple on 07/02/20.
//  Copyright © 2020 KARTLA. All rights reserved.
//

/*import Foundation
enum SISError:Error
{
    case nodataavailable
    case cannotProcessData
}
struct SISRequest{
    let resourceURL:URL
    init(USN:String){
        let resourceString = "https://sis-scraper-rit-dup-2.herokuapp.com/get_sis_data/1MS19CS135/2001-01-06"
        guard let resourceURL = URL(string:resourceString)
            else {
                fatalError()
        }
        self.resourceURL = resourceURL
        
    }
    func getattendance(completion:@escaping(Result<[SISdetail],SISError>)->Void){
        let dataTask = URLSession.shared.dataTask(with:resourceURL ){
            data,_,_ in
            guard let jsonData = data else {
                completion(.failure(.nodataavailable))
              //  fatalError()
                return
            }
            do{
                let decoder = JSONDecoder()
                let SISResponse = try decoder.decode(Attendence.self,from: jsonData)
            }catch{
               completion(.failure(.cannotProcessData))
               // fatalError()
            }
        }
        dataTask.resume()
    }
}*/
