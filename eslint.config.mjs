import path from 'node:path'
import { fileURLToPath } from 'node:url'
import js from '@eslint/js'
import { FlatCompat } from '@eslint/eslintrc'

const __filename = fileURLToPath(import.meta.url)
const __dirname = path.dirname(__filename)
const compat = new FlatCompat({
  baseDirectory: __dirname,
  recommendedConfig: js.configs.recommended,
  allConfig: js.configs.all,
})

export default [
  ...compat.extends('eslint:recommended', 'next', 'plugin:prettier/recommended'),
  {
    rules: {
      'react/react-in-jsx-scope': 'off',
      'prettier/prettier': [
        'error',
        {
          singleQuote: true,
          bracketSpacing: true,
          arrowParens: 'always',
          printWidth: 120,
          semi: false,
          trailingComma: 'es5',
          tabWidth: 2,
          useTabs: false,
          endOfLine: 'auto',
        },
      ],
    },
  },
]
