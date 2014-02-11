Walrus.init({
    ajaxNavigation: true
});

SyntaxHighlighter.all();

$(document).on('pageLoaded', function () {
    SyntaxHighlighter.highlight();
});