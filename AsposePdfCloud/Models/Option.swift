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


/** Provides form option. */

open class Option: Codable {

    /** Gets or sets option export value. */
    public var value: String?
    /** Gets or sets name of option. */
    public var name: String?
    /** Gets or sets selected status of option. Returns true if option is selected. */
    public var selected: Bool?
    /** Gets index of the option.  */
    public var index: Int?

        
    
    public init(value: String?, name: String?, selected: Bool?, index: Int?) {
        self.value = value
        self.name = name
        self.selected = selected
        self.index = index
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(value, forKey: "Value")
        try container.encodeIfPresent(name, forKey: "Name")
        try container.encodeIfPresent(selected, forKey: "Selected")
        try container.encodeIfPresent(index, forKey: "Index")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        value = try container.decodeIfPresent(String.self, forKey: "Value")
        name = try container.decodeIfPresent(String.self, forKey: "Name")
        selected = try container.decodeIfPresent(Bool.self, forKey: "Selected")
        index = try container.decodeIfPresent(Int.self, forKey: "Index")
    }
}

