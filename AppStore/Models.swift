import UIKit

class AppCategory: NSObject {
    
    var name: String?
    var apps: [App]?
    
    static func sampleCategory() -> [AppCategory] {
        
        // first category
        let bestNewAppsCategory = AppCategory()
        bestNewAppsCategory.name = "Best New Apps"
        
        var bestNewApps = [App]()
        
        let frozenApp = App()
        frozenApp.name = "Disney Built It: Frozen"
        frozenApp.category = "Entertainment"
        frozenApp.imageName = "frozen"
        frozenApp.price = NSNumber(value: 3.99)
        bestNewApps.append(frozenApp)
        
        bestNewAppsCategory.apps = bestNewApps
        
        // one more category
        let bestNewGamesCategory = AppCategory()
        bestNewGamesCategory.name = "Best New Games"
        
        var bestNewGames = [App]()
        
        let telepaintApp = App()
        telepaintApp.name = "Telepaint"
        telepaintApp.category = "Games"
        telepaintApp.imageName = "telepaint"
        telepaintApp.price = NSNumber(value: 2.99)
        
        bestNewGames.append(telepaintApp)
        
        bestNewGamesCategory.apps = bestNewGames
        
        return [bestNewAppsCategory, bestNewGamesCategory]
    }
}

class App: NSObject {
    
    var id: NSNumber?
    var name: String?
    var category: String?
    var imageName: String?
    var price: NSNumber?
}
