Walrus.init({
    ajaxNavigation: true
});

SyntaxHighlighter.all();

$(document).on('pageLoaded', function () {
    console.log('test');
    SyntaxHighlighter.highlight();
});