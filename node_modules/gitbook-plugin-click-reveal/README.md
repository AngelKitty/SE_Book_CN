# Click To Reveal Plugin

[![npm version](https://badge.fury.io/js/gitbook-plugin-click-reveal.svg)](https://www.npmjs.com/package/gitbook-plugin-click-reveal)

Simple plugin to add  « Click to Reveal » functionnality to your GitBook.

![Preview](./preview.gif)

## Installation

In your book.json add the plugin:

```json
{
    "plugins": [
        "click-reveal"
    ]
}
```

## Usage

Quick use :

```
{% reveal %}
Your element to **hide**
{% endreveal %}
```

With custom text :

```
{% reveal text="Click here to reveal my secret" %}
Your element to **hide**
{% endreveal %}
```