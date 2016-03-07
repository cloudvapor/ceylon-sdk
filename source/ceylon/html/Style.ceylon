"
 The __&lt;style&gt;__ element contains style information for a document, or 
 part of a document. By default, the style instructions written inside that 
 element are expected to be CSS.
 
 Example:
 
 <table style='width:100%'>
     <tr style='vertical-align: top'>
         <td style='border-style:none'>
         
 <pre data-language='ceylon'>
 Style { type=MimeType.textCss;
     \"body {
           color:red;
       }\"
 };
 </pre>
 
         </td>
         <td style='border-style:none'>
         
 <pre data-language='html'>
 &lt;style type=\"text/css\"&gt;
     body {
         color:red;
     }
 &lt;/style&gt;
 </pre>
         </td>         
     </tr>
 </table>
 
 Technical details about this element can be found on the
 [Official W3C reference](https://www.w3.org/TR/html5/document-metadata.html#the-style-element).
 "
tagged("metadata", "flow")
shared class Style(
    /* GLOBAL ATTRIBUTES - BEGIN */
    "Attribute defines a unique identifier (ID) which must be unique in the whole document. Its purpose is to identify the element when linking (using a fragment identifier), scripting, or styling (with CSS)."
    Attribute<String> id = null,
    "Attribute defines a space-separated list of the classes of the element. Classes allows CSS and JavaScript to select and access specific elements via the class selectors."
    Attribute<String> clazz = null,
    "Attribute provides a hint for generating a keyboard shortcut for the current element. This attribute consists of a space-separated list of characters. The browser should use the first one that exists on the computer keyboard layout."
    Attribute<String> accessKey = null,
    "Attribute indicates if the element should be editable by the user. If so, the browser modifies its widget to allow editing."
    Attribute<Boolean> contentEditable = null,
    "Attribute defines id of an menu element to use as the contextual menu for this element"
    Attribute<String> contextMenu = null,
    "Attribute indicates the directionality of the element's text."
    Attribute<Direction> dir = null,
    "Attribute indicates whether the element can be dragged."
    Attribute<Boolean> draggable = null,
    "Attribute indicates what types of content can be dropped on an element."
    Attribute<DropZone> dropZone = null,
    "Attribute indicates that the element is not yet, or is no longer, relevant. For example, it can be used to hide elements of the page that can't be used until the login process has been completed. The browser won't render such elements. This attribute must not be used to hide content that could legitimately be shown."
    Attribute<Boolean> hidden = null,
    "Attribute specifies the primary language for the element's contents and for any of the element's attributes that contain text. Its value must be a valid BCP 47 language tag, or the empty string. Setting the attribute to the empty string indicates that the primary language is unknown."
    Attribute<String> lang = null,
    "Attribute defines whether the element may be checked for spelling errors."
    Attribute<Boolean> spellcheck = null,
    "Attribute contains CSS styling declarations to be applied to the element. Note that it is recommended for styles to be defined in a separate file or files."
    Attribute<String> style = null,
    "Attribute indicates if the element can take input focus (is focusable), if it should participate to sequential keyboard navigation, and if so, at what position."
    Attribute<Integer> tabIndex = null,
    "Attribute contains a text representing advisory information related to the element it belongs to. Such information can typically, but not necessarily, be presented to the user as a tooltip."
    Attribute<String> title = null,
    "Attribute that is used to specify whether an element's attribute values and the values of its text node children are to be translated when the page is localized, or whether to leave them unchanged."
    Attribute<Boolean> translate = null,
    /* GLOBAL ATTRIBUTES - END */
    "Attribute defines the styling language as a MIME type (charset should not be specified). This attribute is optional and default to text/css if it's missing."
    Attribute<String>|Attribute<MimeType> type = null,
    "Attribute defines which media the style should apply to. It's value is a media query, which default to all if the attribute is missing."
    Attribute<String> media = null,
    "The attributes associated with this element."
    Attributes attributes = [],
    "The children of this element."
    shared actual {Content<String>*} children = [])
        extends Element("style", id, clazz, accessKey, contentEditable, contextMenu, dir, draggable, dropZone, hidden, lang, spellcheck, style, tabIndex, title, translate, 
                    [attributeEntry("type", type), 
                     attributeEntry("media", media), 
                    *attributes], children)
        satisfies MetadataCategory & FlowCategory {
}