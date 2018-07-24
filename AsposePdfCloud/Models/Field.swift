/**
 *
 *   Copyright (c) 2018 Aspose.Pdf for Cloud
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


/** Represents form field. */

open class Field: LinkElement {

    /** Field name. */
    public var name: String?
    /** Field type. */
    public var type: FieldType?
    /** Field values. */
    public var values: [String]?
    /** Selected items. */
    public var selectedItems: [Int]?
    /** Field rectangle. */
    public var rect: Rectangle?

    
    public init(links: [Link]?, name: String?, type: FieldType?, values: [String]?, selectedItems: [Int]?, rect: Rectangle?) {
        super.links = links
        self.name = name
        self.type = type
        self.values = values
        self.selectedItems = selectedItems
        self.rect = rect
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(name, forKey: "Name")
        try container.encodeIfPresent(type, forKey: "Type")
        try container.encodeIfPresent(values, forKey: "Values")
        try container.encodeIfPresent(selectedItems, forKey: "SelectedItems")
        try container.encodeIfPresent(rect, forKey: "Rect")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        name = try container.decodeIfPresent(String.self, forKey: "Name")
        type = try container.decodeIfPresent(FieldType.self, forKey: "Type")
        values = try container.decodeIfPresent([String].self, forKey: "Values")
        selectedItems = try container.decodeIfPresent([Int].self, forKey: "SelectedItems")
        rect = try container.decodeIfPresent(Rectangle.self, forKey: "Rect")
        try super.init(from: decoder)
    }
}

