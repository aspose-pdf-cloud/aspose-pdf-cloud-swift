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



open class FileVersion: File {

    public var versionId: String?
    public var isLatest: Bool?

    
    public init(name: String?, isFolder: Bool, modifiedDate: Date?, size: Int64, path: String?, versionId: String?, isLatest: Bool?) {
        super.init(name: name, isFolder: isFolder, modifiedDate: modifiedDate, size: size, path: path)
        self.versionId = versionId
        self.isLatest = isLatest
    }
        
    

    // Encodable protocol methods

    public override func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(versionId, forKey: "VersionId")
        try container.encodeIfPresent(isLatest, forKey: "IsLatest")
        try super.encode(to: encoder)
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        versionId = try container.decodeIfPresent(String.self, forKey: "VersionId")
        isLatest = try container.decodeIfPresent(Bool.self, forKey: "IsLatest")
        try super.init(from: decoder)
    }
}

