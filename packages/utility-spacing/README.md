# @avalanche/utility-spacing
Spacing utility classes.

- [Documentation](https://avalanche.oberlehner.net/documentation/#utility: spacing)

## Install
```bash
npm install @avalanche/utility-spacing --save-dev
```

## Basic usage
```scss
// Import the main file.
@import 'node_modules/@avalanche/utility-spacing/scss/index.scss';
```

## Usage with [node-sass-magic-importer](https://github.com/maoberlehner/node-sass-magic-importer)
Using [node-sass](https://github.com/sass/node-sass) (or a plugin for Grunt, gulp or webpack which is using node-sass) in combination with the [node-sass-magic-importer](https://github.com/maoberlehner/node-sass-magic-importer) custom importer, can make importing CSS dependencies from `node_modules` a much nicer experience.

```scss
// Import the main file.
@import '~@avalanche/utility-spacing';

// Import just the classes you need.
@import '{ .u-spacing-top-m, .u-spacing-top-l } from ~@avalanche/utility-spacing';

// Not a fan of the "u-" prefix?
@import '{ .u-spacing-top-m as .spacing-top-m } from ~@avalanche/utility-spacing';
```

## Demo
```html
<div class="u-spacing-top-m">Top m</div>
<div class="u-spacing-top-xl">Top xl</div>
<div class="u-spacing-right-m">Right m</div>
<div class="u-spacing-bottom-m">Bottom m</div>
<div class="u-spacing-left-m">Left m</div>
```

## Mixins
```scss
@import 'node_modules/@avalanche/utility-spacing/scss/mixins';

// Usage.
.spacing-top {
  @include u-spacing(1em, top);
}
```

## About
### Author
Markus Oberlehner  
Website: https://markus.oberlehner.net  
Twitter: https://twitter.com/MaOberlehner  
PayPal.me: https://paypal.me/maoberlehner

### License
MIT
