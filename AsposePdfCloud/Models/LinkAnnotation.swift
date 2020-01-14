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


/** Provides link to linkAnnotation. */

open class LinkAnnotation: LinkElement {

    public var actionType: LinkActionType
    public var action: String
    public var highlighting: LinkHighlightingMode
    public var color: Color?
    public var rect: Rectangle
    public var id: String?

    
    public init(links: [Link]?, actionType: LinkActionType, action: String, highlighting: LinkHighlightingMode, color: Color?, rect: Rectangle, id: String?) {
        self.actionType = actionType
        self.action = action
        self.highlighting = highlighting
        self.rect = rect
        super.init(links: links)
        self.color = color
        self.id = id
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(actionType, forKey: "ActionType")
        try container.encode(action, forKey: "Action")
        try container.encode(highlighting, forKey: "Highlighting")
        try container.encodeIfPresent(color, forKey: "Color")
        try container.encode(rect, forKey: "Rect")
        try container.encodeIfPresent(id, forKey: "Id")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        actionType = try container.decode(LinkActionType.self, forKey: "ActionType")
        action = try container.decode(String.self, forKey: "Action")
        highlighting = try container.decode(LinkHighlightingMode.self, forKey: "Highlighting")
        color = try container.decodeIfPresent(Color.self, forKey: "Color")
        rect = try container.decode(Rectangle.self, forKey: "Rect")
        id = try container.decodeIfPresent(String.self, forKey: "Id")
        try super.init(from: decoder)
    }
}

