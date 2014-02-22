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
        console.log("change");
        var version = $(this).find(':selected').val();
        var isDefault = $(this).find(':selected').data('key');

        if (isDefault == 'default') {
            window.location = $(this).find(':selected').data('url');
        } else {
            window.location = window.location + '/' + version;
        }
    });
}

init();