/**
 *
 *   Copyright (c) 2018 Aspose.PDF Cloud
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


/** Represents rectangle DTO. */

open class Rectangle: Codable {

    /** X-coordinate of lower - left corner. */
    public var LLX: Double
    /** Y - coordinate of lower-left corner. */
    public var LLY: Double
    /** X - coordinate of upper-right corner. */
    public var URX: Double
    /** Y - coordinate of upper-right corner. */
    public var URY: Double

        
    
    public init(LLX: Double, LLY: Double, URX: Double, URY: Double) {
        self.LLX = LLX
        self.LLY = LLY
        self.URX = URX
        self.URY = URY
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(LLX, forKey: "LLX")
        try container.encode(LLY, forKey: "LLY")
        try container.encode(URX, forKey: "URX")
        try container.encode(URY, forKey: "URY")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        LLX = try container.decode(Double.self, forKey: "LLX")
        LLY = try container.decode(Double.self, forKey: "LLY")
        URX = try container.decode(Double.self, forKey: "URX")
        URY = try container.decode(Double.self, forKey: "URY")
    }
}

