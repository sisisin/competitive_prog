const path = require('path');

module.exports = function generate(plop) {
  plop.setGenerator('atcoder', {
    prompts: [
      {
        type: 'input',
        name: 'name',
        message: 'choose contest name',
        basePath: '.',
      },
    ],
    actions: [
      {
        type: 'addMany',
        destination: path.join(__dirname, 'challenge'),
        base: '.blueprints/atcoder',
        templateFiles: '.blueprints/atcoder/**/**',
      },
    ],
  });
};
