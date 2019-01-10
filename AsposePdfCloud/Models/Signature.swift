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


/** Represents signature. */

open class Signature: Codable {

    /** Gets or sets the signature path. */
    public var signaturePath: String
    /** Gets or sets the type of the signature. */
    public var signatureType: SignatureType
    /** Gets or sets the signature password. */
    public var password: String?
    /** Sets or gets a graphic appearance for the signature. Property value represents an image file name. */
    public var appearance: String?
    /** Gets or sets the reason of the signature. */
    public var reason: String?
    /** Gets or sets the contact of the signature. */
    public var contact: String?
    /** Gets or sets the location of the signature. */
    public var location: String?
    /** Gets or sets a value indicating whether this  is visible. Supports only when signing particular page. */
    public var visible: Bool
    /** Gets or sets the visible rectangle of the signature. Supports only when signing particular page. */
    public var rectangle: Rectangle?
    /** Gets or sets the name of the signature field. Supports only when signing document with particular form field. */
    public var formFieldName: String?
    /** Gets or sets the name of the person or authority signing the document.. */
    public var authority: String?
    /** Gets or sets the time of signing. */
    public var date: String?
    /** Gets or sets the showproperties in signature field */
    public var showProperties: Bool

        
    
    public init(signaturePath: String, signatureType: SignatureType, password: String?, appearance: String?, reason: String?, contact: String?, location: String?, visible: Bool, rectangle: Rectangle?, formFieldName: String?, authority: String?, date: String?, showProperties: Bool) {
        self.signaturePath = signaturePath
        self.signatureType = signatureType
        self.password = password
        self.appearance = appearance
        self.reason = reason
        self.contact = contact
        self.location = location
        self.visible = visible
        self.rectangle = rectangle
        self.formFieldName = formFieldName
        self.authority = authority
        self.date = date
        self.showProperties = showProperties
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(signaturePath, forKey: "SignaturePath")
        try container.encode(signatureType, forKey: "SignatureType")
        try container.encodeIfPresent(password, forKey: "Password")
        try container.encodeIfPresent(appearance, forKey: "Appearance")
        try container.encodeIfPresent(reason, forKey: "Reason")
        try container.encodeIfPresent(contact, forKey: "Contact")
        try container.encodeIfPresent(location, forKey: "Location")
        try container.encode(visible, forKey: "Visible")
        try container.encodeIfPresent(rectangle, forKey: "Rectangle")
        try container.encodeIfPresent(formFieldName, forKey: "FormFieldName")
        try container.encodeIfPresent(authority, forKey: "Authority")
        try container.encodeIfPresent(date, forKey: "Date")
        try container.encode(showProperties, forKey: "ShowProperties")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        signaturePath = try container.decode(String.self, forKey: "SignaturePath")
        signatureType = try container.decode(SignatureType.self, forKey: "SignatureType")
        password = try container.decodeIfPresent(String.self, forKey: "Password")
        appearance = try container.decodeIfPresent(String.self, forKey: "Appearance")
        reason = try container.decodeIfPresent(String.self, forKey: "Reason")
        contact = try container.decodeIfPresent(String.self, forKey: "Contact")
        location = try container.decodeIfPresent(String.self, forKey: "Location")
        visible = try container.decode(Bool.self, forKey: "Visible")
        rectangle = try container.decodeIfPresent(Rectangle.self, forKey: "Rectangle")
        formFieldName = try container.decodeIfPresent(String.self, forKey: "FormFieldName")
        authority = try container.decodeIfPresent(String.self, forKey: "Authority")
        date = try container.decodeIfPresent(String.self, forKey: "Date")
        showProperties = try container.decode(Bool.self, forKey: "ShowProperties")
    }
}

