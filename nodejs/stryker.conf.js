module.exports = function(config) {
  config.set({
    mutator: 'javascript',
    packageManager: 'npm',
    reporters: ['clear-text', 'progress'],
    testRunner: 'jest',
    transpilers: [],
    coverageAnalysis: 'off',
    mutate: [
      'src/**/**/*.js',
      '!src/app.js',
      '!src/config/**/*.js',
      '!test/**/**/*.js'
    ]
  })
}
