module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js',
    'node_modules/preline/dist/*.js',
  ],
  plugins: [
    require('daisyui'),
    require('@tailwindcss/forms'),
    require('preline/plugin'),
  ]
}
