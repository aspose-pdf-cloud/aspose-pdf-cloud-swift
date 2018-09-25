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


/**  */
public enum AnnotationType: String, Codable {
    case text = "Text"
    case circle = "Circle"
    case polygon = "Polygon"
    case polyLine = "PolyLine"
    case line = "Line"
    case square = "Square"
    case freeText = "FreeText"
    case highlight = "Highlight"
    case underline = "Underline"
    case squiggly = "Squiggly"
    case strikeOut = "StrikeOut"
    case caret = "Caret"
    case ink = "Ink"
    case link = "Link"
    case popup = "Popup"
    case fileAttachment = "FileAttachment"
    case sound = "Sound"
    case movie = "Movie"
    case screen = "Screen"
    case widget = "Widget"
    case watermark = "Watermark"
    case trapNet = "TrapNet"
    case printerMark = "PrinterMark"
    case redaction = "Redaction"
    case stamp = "Stamp"
    case richMedia = "RichMedia"
    case unknown = "Unknown"
    case pdf3d = "PDF3D"

}
