const { environment } = require('@rails/webpacker')

// ↓ 追記部分
const webpack = require('webpack')
environment.plugins.prepend('Provide',
    new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    jquery: 'jquery',
    })
)
// ↑ ここまで

module.exports = environment
