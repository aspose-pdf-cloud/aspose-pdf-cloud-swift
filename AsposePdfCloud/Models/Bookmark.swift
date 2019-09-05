/**
 *
 *   Copyright (c) 2019 Aspose.PDF Cloud
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


/** Provides link to bookmark. */

open class Bookmark: LinkElement {

    /** Get the Title; */
    public var title: String?
    /** Is bookmark italic. */
    public var italic: Bool?
    /** Is bookmark bold. */
    public var bold: Bool?
    /** Get the color */
    public var color: Color?
    /** Gets or sets the action bound with the bookmark. If PageNumber is presented the action can not be specified. The action type includes: \&quot;GoTo\&quot;, \&quot;GoToR\&quot;, \&quot;Launch\&quot;, \&quot;Named\&quot;. */
    public var action: String?
    /** Gets or sets bookmark&#39;s hierarchy level. */
    public var level: Int?
    /** Gets or sets bookmark&#39;s destination page. Required if action is set as string.Empty. */
    public var destination: String?
    /** Gets or sets the type of display bookmark&#39;s destination page. */
    public var pageDisplay: String?
    /** Gets or sets the bottom coordinate of page display. */
    public var pageDisplayBottom: Int?
    /** Gets or sets the left coordinate of page display. */
    public var pageDisplayLeft: Int?
    /** Gets or sets the right coordinate of page display. */
    public var pageDisplayRight: Int?
    /** Gets or sets the top coordinate of page display. */
    public var pageDisplayTop: Int?
    /** Gets or sets the zoom factor of page display. */
    public var pageDisplayZoom: Int?
    /** Gets or sets the number of bookmark&#39;s destination page.  */
    public var pageNumber: Int?
    /** Gets or sets the file (path) which is required for \&quot;GoToR\&quot; action of bookmark. */
    public var remoteFile: String?
    /** The children bookmarks. */
    public var bookmarks: Bookmarks?

    
    public init(links: [Link]?, title: String?, italic: Bool?, bold: Bool?, color: Color?, action: String?, level: Int?, destination: String?, pageDisplay: String?, pageDisplayBottom: Int?, pageDisplayLeft: Int?, pageDisplayRight: Int?, pageDisplayTop: Int?, pageDisplayZoom: Int?, pageNumber: Int?, remoteFile: String?, bookmarks: Bookmarks?) {
        super.init(links: links)
        self.title = title
        self.italic = italic
        self.bold = bold
        self.color = color
        self.action = action
        self.level = level
        self.destination = destination
        self.pageDisplay = pageDisplay
        self.pageDisplayBottom = pageDisplayBottom
        self.pageDisplayLeft = pageDisplayLeft
        self.pageDisplayRight = pageDisplayRight
        self.pageDisplayTop = pageDisplayTop
        self.pageDisplayZoom = pageDisplayZoom
        self.pageNumber = pageNumber
        self.remoteFile = remoteFile
        self.bookmarks = bookmarks
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(title, forKey: "Title")
        try container.encodeIfPresent(italic, forKey: "Italic")
        try container.encodeIfPresent(bold, forKey: "Bold")
        try container.encodeIfPresent(color, forKey: "Color")
        try container.encodeIfPresent(action, forKey: "Action")
        try container.encodeIfPresent(level, forKey: "Level")
        try container.encodeIfPresent(destination, forKey: "Destination")
        try container.encodeIfPresent(pageDisplay, forKey: "PageDisplay")
        try container.encodeIfPresent(pageDisplayBottom, forKey: "PageDisplay_Bottom")
        try container.encodeIfPresent(pageDisplayLeft, forKey: "PageDisplay_Left")
        try container.encodeIfPresent(pageDisplayRight, forKey: "PageDisplay_Right")
        try container.encodeIfPresent(pageDisplayTop, forKey: "PageDisplay_Top")
        try container.encodeIfPresent(pageDisplayZoom, forKey: "PageDisplay_Zoom")
        try container.encodeIfPresent(pageNumber, forKey: "PageNumber")
        try container.encodeIfPresent(remoteFile, forKey: "RemoteFile")
        try container.encodeIfPresent(bookmarks, forKey: "Bookmarks")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        title = try container.decodeIfPresent(String.self, forKey: "Title")
        italic = try container.decodeIfPresent(Bool.self, forKey: "Italic")
        bold = try container.decodeIfPresent(Bool.self, forKey: "Bold")
        color = try container.decodeIfPresent(Color.self, forKey: "Color")
        action = try container.decodeIfPresent(String.self, forKey: "Action")
        level = try container.decodeIfPresent(Int.self, forKey: "Level")
        destination = try container.decodeIfPresent(String.self, forKey: "Destination")
        pageDisplay = try container.decodeIfPresent(String.self, forKey: "PageDisplay")
        pageDisplayBottom = try container.decodeIfPresent(Int.self, forKey: "PageDisplay_Bottom")
        pageDisplayLeft = try container.decodeIfPresent(Int.self, forKey: "PageDisplay_Left")
        pageDisplayRight = try container.decodeIfPresent(Int.self, forKey: "PageDisplay_Right")
        pageDisplayTop = try container.decodeIfPresent(Int.self, forKey: "PageDisplay_Top")
        pageDisplayZoom = try container.decodeIfPresent(Int.self, forKey: "PageDisplay_Zoom")
        pageNumber = try container.decodeIfPresent(Int.self, forKey: "PageNumber")
        remoteFile = try container.decodeIfPresent(String.self, forKey: "RemoteFile")
        bookmarks = try container.decodeIfPresent(Bookmarks.self, forKey: "Bookmarks")
        try super.init(from: decoder)
    }
}

