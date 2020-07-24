module.exports = {
  extends: ['eslint:recommended', 'plugin:vue/vue3-recommended'],
  rules: {
    eqeqeq: ['error', 'smart'],
  },
  env: {
    browser: true,
    node: true,
  },
  parser: 'vue-eslint-parser',
  parserOptions: {
    parser: 'babel-eslint',
    sourceType: 'module',
  },
}
