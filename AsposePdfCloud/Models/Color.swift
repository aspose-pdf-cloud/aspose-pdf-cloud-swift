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


/** Represents color DTO. */

open class Color: Codable {

    /** Alpha component. */
    public var A: Int
    /** Red component. */
    public var R: Int
    /** Green component. */
    public var G: Int
    /** Blue component. */
    public var B: Int

        
    
    public init(A: Int, R: Int, G: Int, B: Int) {
        self.A = A
        self.R = R
        self.G = G
        self.B = B
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(A, forKey: "A")
        try container.encode(R, forKey: "R")
        try container.encode(G, forKey: "G")
        try container.encode(B, forKey: "B")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        A = try container.decode(Int.self, forKey: "A")
        R = try container.decode(Int.self, forKey: "R")
        G = try container.decode(Int.self, forKey: "G")
        B = try container.decode(Int.self, forKey: "B")
    }
}

