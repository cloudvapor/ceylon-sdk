import ceylon.html {
    Node,
    Html,
    Element,
    TextNode,
    ParentNode,
    Snippet
}

shared class NodeSerializer(
    "A stream to direct output to"
    void print(String string),
    "Serialization options"
    SerializerConfig config = SerializerConfig()
) {
    value htmlSerializer = HtmlSerializer(
            print, config.prettyPrint, config.escapeNonAscii);

    shared void serialize(Node root) => visit(root);

    void visitAny(Node|{Node*}|Snippet<Node> child) {
        if (is Node child) {
            visit(child);
        } else if (is {Node*} child) {
            visitNodes(child);
        } else if (exists content = child.content) {
            visitAny(content);
        }
    }

    void visit(Node node) {
        if (is Html node) {
            htmlSerializer.docType(node.doctype.string);
        }
        openTag(node);
        if (is TextNode node) {
            htmlSerializer.text(node.text);
        }
        if (is ParentNode<Node> node) {
            for (child in node.children) {
                if (exists child) {
                    visitAny(child);
                }
            }
        }
        closeTag(node);
    }

    void openTag(Node node) {
        // TODO previous code
        //      1) trimmed attribute value
        //      2) omitted attribute if trimmed value was empty
        // Not sure that was correct; these are not invalid cases
        value attributes =
                if (is Element node)
                then node.attributes
                else {};

        // for now, duplicate bug that drops attributes with empty value
        // only call "string" once:
        value nonEmptyAttributes = attributes.map((attribute)
                => attribute.key->attribute.item.string).filter((attribute)
                => !attribute.item.empty);

        htmlSerializer.startElement(node.tag.name, nonEmptyAttributes);
    }

    void closeTag(Node node)
        =>  htmlSerializer.endElement();

    void visitNodes({Node*} nodes) {
        for (node in nodes) {
            visit(node);
        }
    }
}

"A [[NodeSerializer]] implementation that prints content on console."
shared NodeSerializer consoleSerializer = NodeSerializer(process.write);
