"
 The __&lt;video&gt;__ element to embed video content in a document. The video 
 element contains one or more video sources. To specify a video source, use either 
 the src attribute or the &lt;source&gt; element; the browser will choose the most 
 suitable one.
 
 Technical details about this element can be found on the
 [Official W3C reference](https://www.w3.org/TR/html5/grouping-content.html#the-video-element).
"
tagged("flow", "phrasing", "embedded", "interactive")
shared class Video(
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
    "Attribute if specified, the video automatically begins to play back as soon as it can do so without stopping to finish loading the data."
    Attribute<Boolean> autoplay = null,
    "Attribute you can read to determine the time ranges of the buffered media. This attribute contains a TimeRanges object."
    Attribute<String> buffered = null,
    "Attribute is present, the browser will offer controls to allow the user to control video playback, including volume, seeking, and pause/resume playback."
    Attribute<Boolean> controls = null,
    "Attribute indicates whether to use CORS to fetch the related image."
    Attribute<Crossorigin> crossorigin = null,
    "Attribute specifies the height of the video's display area, in CSS pixels."
    Attribute<Integer> height = null,
    "Attribute if specified, will automatically seek back to the start upon reaching the end of the video."
    Attribute<Boolean> loop = null,
    "Attribute which indicates whether the video will be initially silenced. Its default value is false."
    Attribute<Boolean> muted = null,
    "Attribute specifies a TimeRanges object indicating all the ranges of the video that have been played."
    Attribute<String> played = null,
    "Attribute is intended to provide a hint to the browser about what the author thinks will lead to the best user experience."
    Attribute<Preload> preload = null,
    "Attribute specifes the URL indicating a poster frame to show until the user plays or seeks. If this attribute isn't specified, nothing is displayed until the first frame is available; then the first frame is shown as the poster frame."
    Attribute<String> poster = null,
    "Attribute contains the URL of the video to embed. This is optional, you may instead use the source element within the video block to specify the video to embed."
    Attribute<String> src = null,
    "Attribute specifies the width of the video's display area, in CSS pixels."
    Attribute<Integer> width = null,
    "The attributes associated with this element."
    Attributes attributes = [],
    "The children of this element."
    shared actual {Content<Source|Track|FlowCategory>*} children = [])
        extends Element("video", id, clazz, accessKey, contentEditable, contextMenu, dir, draggable, dropZone, hidden, lang, spellcheck, style, tabIndex, title, translate, 
                    [attributeEntry("autoplay", autoplay),
                     attributeEntry("buffered", buffered),
                     attributeEntry("controls", controls),
                     attributeEntry("crossorigin", crossorigin),
                     attributeEntry("height", height),
                     attributeEntry("loop", loop),
                     attributeEntry("muted", muted),
                     attributeEntry("played", played),
                     attributeEntry("preload", preload),
                     attributeEntry("poster", poster),
                     attributeEntry("src", src),
                     attributeEntry("width", width),
                    *attributes], children)
        satisfies FlowCategory & PhrasingCategory & EmbeddedCategory & InteractiveCategory {
}