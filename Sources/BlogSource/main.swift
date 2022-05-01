import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct BlogSource: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://mktaros33.github.io")!
    var name = "mktaros33"
    var description = "自己満足しか勝たん🥸"
    var language: Language { .japanese }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try BlogSource().publish(using: [
    .addMarkdownFiles(),
    .copyResources(),
    .generateHTML(withTheme: .mktaros33),
    .generateRSSFeed(including: [.posts]),
    .generateSiteMap(),
    .deploy(using: .gitHub("mktaros33/mktaros33.github.io", useSSH: false))
])
