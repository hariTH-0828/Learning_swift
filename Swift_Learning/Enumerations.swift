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
