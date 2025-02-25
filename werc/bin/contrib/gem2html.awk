#!/usr/bin/awk -f

BEGIN {
    in_pre = 0;
    in_list = 0;
    in_html = 0;
}


!in_html && /^\^\^\^/ {
    in_html = 1;
    next
}
in_html && /^\^\^\^/    { in_html = 0; next }
in_html       { print $0; next }

!in_pre && /^```/ {
    in_pre = 1;
    if (in_list) {
       in_list = 0;
       print("</ul>");
    }
    print "<pre>";
    next
}
in_pre && /^```/    { in_pre = 0; print "</pre>"; next }
in_pre       { print san($0); next }


/^###/  { output("<h3>", substr($0, 4), "</h3>"); next }
/^##/   { output("<h2>", substr($0, 3), "</h2>"); next }
/^#/    { output("<h1>", substr($0, 2), "</h1>"); next }
/^>/    { output("<blockquote>", substr($0, 2), "</blockquote>"); next }
/^\*/   { output("<li>", substr($0, 2), "</li>"); next }
/^=>/   {
    $0 = substr($0, 3);
    link = $1;
    $1 = "";
    output_link(link, $0);
    next;
}
/^:>/   {
    $0 = substr($0, 3);
    link = $1;

    $1 = "";
    output_image(link, $0, $3, $4);
    next;
}
//  { output("<p>", $0, "</p>"); next }

END {
    if (in_list)
       print "</ul>"
    if (in_pre)
       print "</pre>"
    if (in_html)
       print ""
    print "</body>\n</html>"
}

function trim(s) {
    sub("^[ \t]*", "", s);
    return s;
}

function san(s) {
    gsub("&", "\\&amp;", s)
    gsub("<", "\\&lt;", s)
    gsub(">", "\\&gt;", s)
    return s;
}

function output(ot, content, ct) {
    content = trim(content);

    if (!in_list && ot == "<li>") {
       in_list = 1;
       print "<ul>";
    }

    if (in_list && ot != "<li>") {
       in_list = 0;
       print "</ul>";
    }

    if (ot == "<p>" && content == "")
       return;

    printf("%s%s%s\n", ot, san(content), ct);
}

function output_link(link, content) {
    if (in_list) {
       in_list = 0;
       print "</ul>";
    }

   # If it's a local gemini file, link to the html:
    if((link !~ /^[a-zA-Z]*:\/\//) && (link ~ /\.gmi$/)){
        sub(/\.gmi$/, ".html", link)
    }


    if (content == "")
       content = link;

    printf("=> <a href=\"%s\">%s</a><br>\n", link, trim(san(content)));
}

function output_image(link, content, width, height) {
    if (in_list) {
       in_list = 0;
       print "</ul>";
    }

    if (content == "")
       content = link;

    printf("<img src=\"%s\" alt=\"%s\" width=\"%s\" height=\"%s\"></img><br>\n", link, trim(san(content)), width, height);
}
