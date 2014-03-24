Walrus.init({
    ajaxNavigation: true
});

SyntaxHighlighter.all();

Walrus.breadCrumb(function () {
    SyntaxHighlighter.highlight();
    init();
});

function init() {
    $('#version').on('change', function () {
        var version = $(this).find(':selected').val();
        var pos = window.location.href.indexOf('/doc');
        var url = window.location.href.substr(0, pos + 4);
        Walrus.go(url + '/' + version);
    });
}

init();