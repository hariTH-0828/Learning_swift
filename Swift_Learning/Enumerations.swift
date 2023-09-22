/*
    1. Enum
    2. Raw value
    3. Associate value
 */

enum socialMedia {
    case INSTAGRAM
    case WHATSAPP
    case CLIQ
    case LINKEDIN
}

func sendMessage(on platform: socialMedia) -> String {
    switch platform {
    case .INSTAGRAM:
        return "Message is sending on Instagram"
    case .WHATSAPP:
        return "Message is sending on Whatsapp"
    case .CLIQ:
        return "Message is sending on Cliq"
    case .LINKEDIN:
        return "Message is sending on LinkedIn"
    }
}

// Raw_value

enum actorsName: String, CaseIterable {                         
    case VIJAY = "He's is an top actor in tamil Industry"
    case AJITH = "He's is an best bike rider and top favourite actor in tamil Industry"
    case SIVAKARTHI = "He's is an family lovable next super star in tamil industry"
    case SURIYA = "He's is an leading actor in tamil industry"
}

func getMyOpinion(get opinion: actorsName) -> String {
    return opinion.rawValue
}

// Associate value

enum socialMediaPlatform {
    case YOUTUBE(subscriber: Int)
    case INSTAGRAM(followers: Int)
    case WHATSAPP(contacts: Int)
    case CLIQ(people: Int)
}

func isAvailablePremium(get count: socialMediaPlatform) -> String {
    switch count {
        case let .YOUTUBE(subscribers) where subscribers > 10000:
            return "Congratulation, You are now available for premium subscription"
        case let .INSTAGRAM(followeres) where followeres > 30000:
            return "Congratulation, You are now available for premium holder"
        case .CLIQ, .WHATSAPP, .YOUTUBE, .INSTAGRAM:
            return "Sorry, Your not available for premium plans"
    }
}

