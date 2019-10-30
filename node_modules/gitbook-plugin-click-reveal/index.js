function wrap (body, text) {
  return {
      parse: true,
      body: '<div class="click_reveal"><span> ' + text + ' </span><div>' + body + '</div></div>'
    };
}

module.exports = {
    website: {
        assets: "./click_reveal",
        js: [
            "click_reveal.js"
        ],
        css: [
            "click_reveal.css"
        ]
    },
    blocks: {
        reveal: {
            process: function(block) {
                var text = block.kwargs.text || 'Click to show';
                return this.renderBlock('markdown', block.body).then(renderedBody => wrap(renderedBody, text));
            }
        }
    },
    hooks: {},
    filters: {}
};