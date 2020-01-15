/**
 *
 *   Copyright (c) 2020 Aspose.PDF Cloud
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 */




import Foundation


/** Provides link to DisplayProperties. */

open class DisplayProperties: LinkElement {

    /** Gets or sets flag specifying whether position of the document&#39;s window will be centerd on the screen. */
    public var centerWindow: Bool?
    /** Gets or sets reading order of text: L2R (left to right) or R2L (right to left). */
    public var direction: Direction?
    /** Gets or sets flag specifying whether document&#39;s window title bar should display document title. */
    public var displayDocTitle: Bool?
    /** Gets or sets flag specifying whether menu bar should be hidden when document is active. */
    public var hideMenuBar: Bool?
    /** Gets or sets flag specifying whether toolbar should be hidden when document is active. */
    public var hideToolBar: Bool?
    /** Gets or sets flag specifying whether user interface elements should be hidden when document is active. */
    public var hideWindowUI: Bool?
    /** Gets or sets page mode, specifying how to display the document on exiting full-screen mode. */
    public var nonFullScreenPageMode: PageMode?
    /** Gets or sets page layout which shall be used when the document is opened. */
    public var pageLayout: PageLayout?
    /** Gets or sets page mode, specifying how document should be displayed when opened. */
    public var pageMode: PageMode?

    
    public init(links: [Link]?, centerWindow: Bool?, direction: Direction?, displayDocTitle: Bool?, hideMenuBar: Bool?, hideToolBar: Bool?, hideWindowUI: Bool?, nonFullScreenPageMode: PageMode?, pageLayout: PageLayout?, pageMode: PageMode?) {
        super.init(links: links)
        self.centerWindow = centerWindow
        self.direction = direction
        self.displayDocTitle = displayDocTitle
        self.hideMenuBar = hideMenuBar
        self.hideToolBar = hideToolBar
        self.hideWindowUI = hideWindowUI
        self.nonFullScreenPageMode = nonFullScreenPageMode
        self.pageLayout = pageLayout
        self.pageMode = pageMode
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(centerWindow, forKey: "CenterWindow")
        try container.encodeIfPresent(direction, forKey: "Direction")
        try container.encodeIfPresent(displayDocTitle, forKey: "DisplayDocTitle")
        try container.encodeIfPresent(hideMenuBar, forKey: "HideMenuBar")
        try container.encodeIfPresent(hideToolBar, forKey: "HideToolBar")
        try container.encodeIfPresent(hideWindowUI, forKey: "HideWindowUI")
        try container.encodeIfPresent(nonFullScreenPageMode, forKey: "NonFullScreenPageMode")
        try container.encodeIfPresent(pageLayout, forKey: "PageLayout")
        try container.encodeIfPresent(pageMode, forKey: "PageMode")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        centerWindow = try container.decodeIfPresent(Bool.self, forKey: "CenterWindow")
        direction = try container.decodeIfPresent(Direction.self, forKey: "Direction")
        displayDocTitle = try container.decodeIfPresent(Bool.self, forKey: "DisplayDocTitle")
        hideMenuBar = try container.decodeIfPresent(Bool.self, forKey: "HideMenuBar")
        hideToolBar = try container.decodeIfPresent(Bool.self, forKey: "HideToolBar")
        hideWindowUI = try container.decodeIfPresent(Bool.self, forKey: "HideWindowUI")
        nonFullScreenPageMode = try container.decodeIfPresent(PageMode.self, forKey: "NonFullScreenPageMode")
        pageLayout = try container.decodeIfPresent(PageLayout.self, forKey: "PageLayout")
        pageMode = try container.decodeIfPresent(PageMode.self, forKey: "PageMode")
        try super.init(from: decoder)
    }
}

