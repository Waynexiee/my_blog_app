CKEDITOR.editorConfig = function(config) {
    config.language = 'en';
    config.width = '1000';


    config.toolbarGroups = [
        // { name: 'clipboard',   groups: [ 'clipboard', 'undo' ] },
        // { name: 'editing',     groups: [ 'find', 'selection', 'spellchecker' ] },
        // { name: 'links' },
        // { name: 'insert' },
        // { name: 'forms' },
        { name: 'tools' },
        // { name: 'document',	   groups: [ 'mode', 'document', 'doctools' ] },

        // '/',
        { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
        // { name: 'paragraph',   groups: [ 'list', 'indent', 'blocks', 'align', 'bidi' ] },
        { name: 'styles' },
        { name: 'others' }
        // { name: 'colors' },
        // { name: 'about' }
    ];

    // Remove some buttons provided by the standard plugins, which are
    // not needed in the Standard(s) toolbar.
    config.removeButtons = 'Underline,Subscript,Superscript';
    config.extraPlugins = 'markdown';  // this is the point!
    // Set the most common block elements.
    config.format_tags = 'p;h1;h2;h3;pre';

    // Simplify the dialog windows.
    config.removeDialogTabs = 'image:advanced;link:advanced';
};