//
//  Movies.swift
//  MovieListApp
//
//  Created by tailorr on 18.10.2021.
//

import SwiftUI

class Movies{
    
    static let movies: [MoviesItem] = []
    
    static let movieData: [MoviesData] = [
        
        MoviesData(id: 0, moviesOverview:
                    [MoviesOverview(id: 0, movieOverview: "Venom: Let There Be Carnage", moviePosterImage: "venom-carnage-poster", overviewArray: [Overview(id: 0, movieLanguage: "Language: English", movieBackdropImage: "venom-carnage-backdrop", movieOverview: "After finding a host body in investigative reporter Eddie Brock, the alien symbiote must face a new enemy, Carnage, the alter ego of serial killer Cletus Kasady."),
        
            ]),
             
                    MoviesOverview(id: 1, movieOverview: "Free Guy", moviePosterImage: "free-guy-poster", overviewArray: [Overview(id: 0, movieLanguage: "Language: English", movieBackdropImage: "free-guy-backdrop", movieOverview: "A bank teller called Guy realizes he is a background character in an open world video game called Free City that will soon go offline."),

             ]),
             
                    MoviesOverview(id: 2, movieOverview: "Venom", moviePosterImage: "venom-poster", overviewArray: [Overview(id: 0, movieLanguage: "Language: English", movieBackdropImage: "venom-backdrop", movieOverview: "Investigative journalist Eddie Brock attempts a comeback following a scandal, but accidentally becomes the host of Venom, a violent, super powerful alien symbiote. Soon, he must rely on his newfound powers to protect the world from a shadowy organization looking for a symbiote of their own."),
                                                                                                                
             ]),
            
                    MoviesOverview(id: 3, movieOverview: "Halloween Kills", moviePosterImage: "halloween-kills-poster", overviewArray: [Overview(id: 0, movieLanguage: "Language: English", movieBackdropImage: "halloween-kills-backdrop", movieOverview: "Minutes after Laurie Strode, her daughter Karen and granddaughter Allyson left masked monster Michael Myers caged and burning in Laurie's basement, Laurie is rushed to the hospital with life-threatening injuries, believing she finally killed her lifelong tormentor. But when Michael manages to free himself from Laurie's trap, his ritual bloodbath resumes. As Laurie fights her pain and prepares to defend herself against him, she inspires all of Haddonfield to rise up against their unstoppable monster. The Strode women join a group of other survivors of Michael's first rampage who decide to take matters into their own hands, forming a vigilante mob that sets out to hunt Michael down, once and for all."),
                 
             
             ]),
            
                        MoviesOverview(id: 4, movieOverview: "Matando Cabos 2", moviePosterImage: "matando-cabos-2-poster", overviewArray: [Overview(id: 0, movieLanguage: "Language: English", movieBackdropImage: "matando-cabos-2-backdrop", movieOverview: "Faced with the unexpected death of his estranged father -El Máscara- and the subsequent theft of his precious mask, Rubén -Mascarita- will find himself confronted with his past. Alongside his invincible bodyguard Tony \"The Cannibal\" and, an unexpected ally, he will have only one day to recover it and make amends with the memory of his father."),
                                
             ]),
            
                        MoviesOverview(id: 5, movieOverview: "The Addams Family 2", moviePosterImage: "the-addams-family-2-poster", overviewArray: [Overview(id: 0, movieLanguage: "Language: English", movieBackdropImage: "the-addams-family-2-backdrop", movieOverview: "The Addams get tangled up in more wacky adventures and find themselves involved in hilarious run-ins with all sorts of unsuspecting characters."),
                                                                                                                                            
             ]),
            
                        MoviesOverview(id: 6, movieOverview: "Snake Eyes: G.I. Joe Origins", moviePosterImage: "snake-eyes-poster", overviewArray: [Overview(id: 0, movieLanguage: "Language: English", movieBackdropImage: "snake-eyes-backdrop", movieOverview: "After saving the life of their heir apparent, tenacious loner Snake Eyes is welcomed into an ancient Japanese clan called the Arashikage where he is taught the ways of the ninja warrior. But, when secrets from his past are revealed, Snake Eyes' honor and allegiance will be tested – even if that means losing the trust of those closest to him."),
            
                                                                                                                                      
             ]),
       
    ])]
    
    static let moviesFavData: [MoviesFavItem] = [
           MoviesFavItem(itemID: "1", itemName: "Snake Eyes: G.I. Joe Origins", itemColor: "English", itemImage: "snake-eyes-poster"),
           MoviesFavItem(itemID: "2", itemName: "Halloween Kills", itemColor: "English", itemImage: "halloween-kills-poster"),
           MoviesFavItem(itemID: "3", itemName: "Venom: Let There Be Carnage", itemColor: "English", itemImage: "venom-carnage-poster")
       ]
    
}
