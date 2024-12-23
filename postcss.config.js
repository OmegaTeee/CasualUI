module.exports = {
    plugins: [
        require('postcss-import'),
        require('postcss-mixins'),
        require('postcss-nesting'),
        require('postcss-color-converter')({
            outputColorFormat: 'rgb',
        }),
        require('postcss-assets')({
            loadPaths: ['Assets/Runtime/Resources/'],
        }),
        require('postcss-preset-env')({
            stage: 3,
            autoprefixer: false,
            features: {
                'custom-properties': true, // Use CSS variables
                'nesting-rules': true, // Use nesting rules
                'custom-selectors': { preserve: true } // Preserve custom selectors
            }
        })
    ]
};