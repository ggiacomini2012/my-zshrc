#ZSHCONFIG

# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/guilherme/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
dnf
zsh-syntax-highlighting
zsh-autosuggestions
fzf
docker docker-compose
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH=${PATH}:/usr/local/mysql/bin
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#zip files
function zip-me() {
  zip -r "$1".zip "$1"
}

#PATH's
alias desktop="~/Desktop"
alias osascript-folder="~/Desktop/trabalho-e-estudo/osascript"

#Osascript
function apps-running() {
  osascript -e 'tell application "Finder"
    get the name of every process whose visible is true
end tell'
}

#packagejson
# npm pkg set scripts.prepare="husky install"
# npm pkg delete scripts.prepare="husky install"
function package-json-script-add {
  npm pkg set scripts.$1=$2
}
function package-json-script-delete {
  npm pkg delete scripts.$1
}

#aliaser used to come here
alias brain="code -a brain-storm.txt"
alias mk="mkdir -p -- "
alias python="/usr/local/bin/python3"
alias prove="npm run test:mocha"
alias ga="git add ."
alias coder="code . -r && exit"
alias gs="git status"
alias zshconfig="code ~/.zshrc"
alias zshconfig-atom="atom ~/.zshrc"
alias ohmyzsh="code ~/.oh_my_zshohmy"
alias modulo1="~/*/*/trybe-exercises/Modulo1 && ls"
alias modulo2="cd && */*/trybe-exercises/Modulo2 && ls"
alias modulo3="cd && */*/trybe-exercises/Modulo3 && ls"
alias modulo4="cd && */*/trybe-exercises/Modulo4 && ls"
function projetos() {cd && */*/projetos && ls}
alias aulas="cd && */*/lessons-learned/sd-015-b-live-lectures && ls"
alias goplayground="cd && */*/playground && ls && echo '' && clear"
alias true-play="cd && */*/playground/true-playgrounds && clear"
alias meunodezin="cd && */*/playground && node ."

#PNPM
alias pn="pnpm" 

#MAC-CONFIG
function mac-mouse-speed(){
  defaults write .GlobalPreferences com.apple.mouse.scaling $1
}

function mac-log(){
  defaults read .GlobalPreferences
}



#STUDY #CODING #START
function  study(){
  code -r /Users/guilherme/Desktop/trabalho-e-estudo/portifolio/portifolio-web
  open /Users/guilherme/Desktop/
  # open https://excalidraw.com/
  open https://www.notion.so/
  open https://beta.openai.com/playground
  open -a Notes.app
  code --locale /Users/guilherme/Desktop ~/.zshrc
}

function  start-study(){
  study
}

#MONOREPO-NX
function monorepo-nx() {
npx create-nx-workspace $1 --preset=apps --cli=nx --packageManager pnpm --nx-cloud=true
cd $1
rm -rf tools
mv libs global
pnpm i -D @nrwl/jest @nrwl/cypress
pnpm i @nrwl/vite  @nrwl/react-native  @nrwl/react @nrwl/express
npx nx generate @nrwl/node:app backend --framework=express 
npx nx generate @nrwl/react:app frontend --style=css --routing --bundler='vite'   
pnpm i -D eslint-config-airbnb  

echo '\nConfiguring package.json scripts...\n'
npm pkg set scripts.prepare="husky install"
npm pkg set scripts.commit="git-cz"
npm pkg set scripts.lint="eslint --no-error-on-unmatched-pattern -c .eslintrc.json . --ext .tsx"
npm pkg set scripts.lint:fix="eslint --no-error-on-unmatched-pattern -c .eslintrc.json . --ext .tsx --fix"
npm pkg set scripts.prettier="prettier --check ."
npm pkg set scripts.prettier:fix="prettier --write ."
npm pkg set scripts.test="vitest --no-watch"
npm pkg set scripts.test:cover="vitest --coverage --no-watch"
npm pkg set scripts.test:cypress="cypress run"
npm pkg set scripts.test:cypress:OPNE="cypress open"

echo '\nPreparing and refactoring frontend directory...\n'
cd ~/Desktop/trabalho-e-estudo/portfolio/morgana/apps/frontend
insert-in-file '"overrides"' '"parserOptions": { "project": ["apps\/frontend\/tsconfig.*?.json"] },' .eslintrc.json
insert-in-file '"overrides"' '"rules": {                       
    "react\/react-in-jsx-scope": "off",
    "semi": ["error", "always"],
    "\@typescript-eslint\/semi": "off",
    "\@typescript-eslint\/space-before-function-paren": "off",
    "\@typescript-eslint\/explicit-function-return-type": "off",
    "no-multiple-empty-lines": "error"
  },' .eslintrc.json
insert-in-file '"vitest"' '"\@testing-library\/jest-dom",' tsconfig.json
perl -0777 -i -pe 's/<link rel="icon" type="image\/x-icon" href="\/favicon.ico" \/>//g' index.html
rm -rf public
cd -
echo '\nPreparing and installing frontend addicional dependencies...\n'

echo '\nPreparing and refactoring backend directory...\n'
cd ~/Desktop/trabalho-e-estudo/portfolio/morgana/apps/backend
insert-in-file '"overrides"' '"parserOptions": { "project": ["apps\/backend\/tsconfig.*?.json"] },' .eslintrc.json
insert-in-file '"overrides"' '"rules": {                       
    "react\/react-in-jsx-scope": "off",
    "semi": ["error", "always"],
    "\@typescript-eslint\/semi": "off",
    "\@typescript-eslint\/space-before-function-paren": "off",
    "\@typescript-eslint\/explicit-function-return-type": "off",
    "\@typescript-eslint\/prefer-nullish-coalescing": "off",
    "\@typescript-eslint\/strict-boolean-expressions": "off",
    "no-multiple-empty-lines": "error"
  },' .eslintrc.json
cd -
echo '\nPreparing and installing backend addicional dependencies...\n'

# echo '\nDeleting .gitkeep files...\n'
# find . -name '*.gitkeep' -type f -delete

echo '\nDeleting .vscode directory...\n'
rm -rf .vscode

echo > .eslintignore 'vite*
node_modules
.*
*.test.*
*.spec.*
*.config.*
cypress/*
*.json'

echo '\nConfiguring git actions...\n'                                                                                                    1m 25s
mkdir .github
mkdir .github/workflows
echo > .github/workflows/ci.yml "name: CI

on:
  push:
    branches: ["*"]
  pull_request:

jobs:
  main:
    name: Nx Cloud - Main Job
    uses: nrwl/ci/.github/workflows/nx-cloud-main.yml@v0.11.2
    with:
      number-of-agents: 3
      init-commands: |
        pnpm exec nx-cloud record -- nx run frontend:lint 
        pnpm exec nx-cloud record -- nx run frontend:test 
        pnpm exec nx-cloud record -- nx run backend:lint
        pnpm exec nx-cloud record -- nx run backend:test 
        pnpm exec nx-cloud start-ci-run --stop-agents-after=build --agent-count=3
      parallel-commands-on-agents: |
        pnpm exec nx affected --target=lint --parallel=3
        pnpm exec nx affected --target=test --parallel=3 --ci --code-coverage
        pnpm exec nx affected --target=build --parallel=3

  agents:
    name: Nx Cloud - Agents
    uses: nrwl/ci/.github/workflows/nx-cloud-agents.yml@v0.11.2
    with:
      number-of-agents: 3
"

echo '\nDockerization...\n'
echo > apps/frontend/Dockerfile "FROM node:16-alpine

WORKDIR /app

COPY . .

RUN pnpm install

EXPOSE 5173

ENTRYPOINT [\"nx\", \"run\", \"frontend:serve\"]"
echo > .dockerignore "node_modules
pnpm-lock.yaml
package-lock.json
.*
**/.git
cypress"
echo > docker-compose.yml "version: \"3.9\"
services:
  front:
    build: .
    ports:
    - 5173:5173
    volumes:
    - ./src:/app/src"

echo '\nInstalling redux...\n'
pnpm i @reduxjs/toolkit
pnpm i react-redux

echo '\nAdding rules to .prettierrc file...\n'
insert-in-file '"singleQuote"' '"tabWidth": 2,  
  "trailingComma": "all",
  "printWidth": 100,' .prettierrc

echo '\nInstalling format and pre-commit lints...\n'
pnpm add -D -E cz-conventional-changelog
pnpm -D i @commitlint/config-conventional @commitlint/cli
pnpm i -D lint-staged commitizen husky prettier

echo '\nAdding commitzen configuration path o package.json "config: {}"...\n'
insert-in-file '"private"' '"config": {     
    "commitizen": {
      "path": ".\/node_modules\/cz-conventional-changelog"
    }
  },' package.json

echo '\nCommitlint configuration...\n'
echo > commitlint.config.cjs 'module.exports = {
  "extends": [
    "@commitlint/config-conventional"
  ],
  "rules": {
    "type-enum": [
      2,
      "always",
      [
      "feat",
      "fix",
      "docs",
      "style",
      "refactor",
      "test",
      "revert",
      "start",
      "chore",
      "build"
      ]
    ]
  }
}
'

echo '\nLint-staged configuration...\n'
echo > .lintstagedrc '{
  "*.(ts|tsx)": [
      "nx run frontend:lint",
      "nx run backend:lint"
  ]
}'

echo '\nHusky configuration...\n'
npx husky add .husky/commit-msg ' '
echo -n >> .husky/commit-msg "npx --no -- commitlint --edit $"
echo -n >> .husky/commit-msg "1"
npx husky add .husky/pre-commit 'npx lint-staged'
npm run prepare


echo '\nAdding Notes...\n'
mkdir notes
echo > notes/bug-report.txt '<data>
  <título>
  <mensagem>
    <solução>
<-fim>
'
echo > notes/general-goals.txt '1. Why your app is safe?
  Answer

2. Why your app is fast?
  Answer

3. Why your app is responsive?
  Answer

4. Why your app is easy-to-use?
  Answer

5. Why your app is escalable?
  Answer

6. Why your app is cross-plataform?
  Answer

7. Why your app has real-time interaction?
  Answer

8. Why your app has excelent search engine?
  Answer

'
echo > notes/TDD.txt 'What is the next step?
  Answer
    Right a test about it.
    Right a solution.
    Refactor.

'
echo > notes/temporary.txt ''

echo '\nAdding  @testing-libraries...\n'
pnpm i -D @types/testing-library__jest-dom 
pnpm i -D @testing-library/react @testing-library/jest-dom @testing-library/user-event
pnpm i -D @open-wc/testing

echo '\nInicialization completed'
#GLOB
}

#START-FRONTEND-PROJECT-REACT-TS-SINGLETON
function frontend-project-singleton-create() {

echo '\nInitiating project...\n'
npm init vite@latest $1 -- --template react-ts
cd $1
touch README.md

echo '\nInitiating Git...\n'
git init
git branch -M main

npm install

echo '\nConfiguring package.json scripts...\n'
npm pkg set scripts.prepare="husky install"
npm pkg set scripts.commit="git-cz"
npm pkg set scripts.lint="eslint --no-error-on-unmatched-pattern -c .eslintrc.json . --ext .tsx"
npm pkg set scripts.lint:fix="eslint --no-error-on-unmatched-pattern -c .eslintrc.json . --ext .tsx --fix"
npm pkg set scripts.prettier="prettier --check ."
npm pkg set scripts.prettier:fix="prettier --write ."
npm pkg set scripts.test="vitest --no-watch"
npm pkg set scripts.test:cover="vitest --coverage --no-watch"
npm pkg set scripts.test:cypress="cypress run"
npm pkg set scripts.test:cypress:OPNE="cypress open"
# npm pkg set scripts.test="react-scripts test --watchAll=false --verbose"
# npm pkg set scripts.test:cover="react-scripts test --watchAll=false --verbose --coverage"
# npm pkg set scripts.test:watch="react-scripts test"

echo '\nConfiguring git actions...\n'
mkdir .github
mkdir .github/workflows
echo > .github/workflows/main.yml "name: Github Actions

on:
  push:
    branches: [\"*\"]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: actions/setup-node@v1
        with:
          node-version: 16
      - run: npm ci
      - run: npm run lint
"


echo '\nConfiguring Vite...\n'
echo > vite.config.ts "/// <reference types=\"vitest\"/>
/// <reference types=\"vite/client\"/>

import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  plugins: [react()],
  root: 'src',
  build: {
    outDir: '../dist',
  },
  server: { host: true },
  test: {
    exclude: ['react/templates/page/template.test.tsx' ],
    globals: true,
    reporters: 'verbose',
    setupFiles: '../setupTests.ts',
    coverage: {
      reporter: ['text', 'html'],
      reportsDirectory: '../coverage',
    },
    watch: false,
    environment: 'jsdom',
  },
});
"

echo '\nConfiguring typescript...\n'
echo > tsconfig.json '{
  "esm": true,
  "compilerOptions": {
    "lib": ["DOM", "DOM.Iterable", "ESNext"],
    "allowJs": false,
    "skipLibCheck": true,
    "esModuleInterop": true,
    "allowSyntheticDefaultImports": true,
    "strict": true,
    "forceConsistentCasingInFileNames": true,
    "moduleResolution": "Node",
    "resolveJsonModule": true,
    "isolatedModules": true,
    "noEmit": true,
    "jsx": "react-jsx",
    "baseUrl": "./src"
  },
  "include": ["src"],
  "exclude": ["node_modules"],
  "references": [{ "path": "./tsconfig.node.json" }]
}
'

echo '\nInstalling react-router-dom...\n'
npm i react-router-dom

echo '\nInstalling redux...\n'
npm i @reduxjs/toolkit
npm i react-redux


echo '\nDockerization...\n'
echo > Dockerfile "FROM node:16-alpine

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 5173

ENTRYPOINT [\"npm\", \"run\", \"dev\"]"
echo > .dockerignore "node_modules
package-lock.json
.*
**/.git
cypress"
echo > docker-compose.yml "version: \"3.9\"
services:
  front:
    build: .
    ports:
    - 5173:5173
    volumes:
    - ./src:/app/src"


echo '\nInstalling eslint...\n'
npm init @eslint/config
echo > .eslintignore 'vite*
node_modules
.*
*.test.ts
*.config.*
cypress/*
*.json'
echo > .eslintrc.json '{
    "env": {
    "browser": true,
    "es2021": true,
    "jest": true
  },
  "extends": [
    "plugin:react/recommended",
    "airbnb"
  ],
  "parser": "@typescript-eslint/parser",
  "parserOptions": {
    "ecmaFeatures": {
      "jsx": true
    },
    "ecmaVersion": "latest",
    "sourceType": "module"
  },
  "plugins": [
    "react",
    "@typescript-eslint"
  ],
  "rules": {
    "react/react-in-jsx-scope": "off",
    "react/jsx-one-expression-per-line": "off",
    "import/prefer-default-export": "off",
    "import/no-extraneous-dependencies": [
      "error",
      {
        "devDependencies": true
      }
    ],
    "react/jsx-filename-extension": [
      1,
      {
        "extensions": [
          ".js",
          ".jsx",
          ".tsx"
        ]
      }
    ],
    "import/extensions": [
      "error",
      "ignorePackages",
      {
        "js": "never",
        "jsx": "never",
        "ts": "never",
        "tsx": "never"
      }
    ]
  },
  "globals": {
    "JSX": true
  },
  "settings": {
    "import/resolver": {
      "node": {
        "extensions": [
          ".js",
          ".jsx",
          ".ts",
          ".tsx"
        ]
      }
    }
  }
}'

echo '\nInstalling format and pre-commit lints...\n'
npx commitizen init cz-conventional-changelog --save-dev --save-exact
npm -D i @commitlint/config-conventional @commitlint/cli
npm i -D lint-staged commitizen husky prettier

echo '\nCommitlint configuration...\n'
echo > commitlint.config.cjs 'module.exports = {
  "extends": [
    "@commitlint/config-conventional"
  ],
  "rules": {
    "type-enum": [
      2,
      "always",
      [
      "feat",
      "fix",
      "docs",
      "style",
      "refactor",
      "test",
      "revert",
      "start",
      "chore",
      "build"
      ]
    ]
  }
}
'

echo '\nLint-staged configuration...\n'
echo > .lintstagedrc '{
  "*.(ts|tsx)": [
      "npm run lint"
  ]
}'

echo '\nPrettier configuration...\n'
echo > .prettierrc '{
  "tabWidth": 2,
  "singleQuote": true,
  "trailingComma": "all",
  "printWidth": 100
}'
echo > .prettierignore 'vite*
node_modules
.*
*.test.ts
*.config.*
cypress/*
*.json'

echo '\nHusky configuration...\n'
npx husky add .husky/commit-msg ' '
echo -n >> .husky/commit-msg "npx --no -- commitlint --edit $"
echo -n >> .husky/commit-msg "1"
npx husky add .husky/pre-commit 'npx lint-staged'
npm run prepare

echo '\nAdding Notes...\n'
mkdir notes
echo > notes/bug-report.txt '<data>
  <título>
  <mensagem>
    <solução>
<-fim>
'
echo > notes/general-goals.txt '1. Why your app is safe?
  Answer

2. Why your app is fast?
  Answer

3. Why your app is responsive?
  Answer

4. Why your app is easy-to-use?
  Answer

5. Why your app is escalable?
  Answer

6. Why your app is cross-plataform?
  Answer

7. Why your app has real-time interaction?
  Answer

8. Why your app has excelent search engine?
  Answer

'
echo > notes/TDD.txt 'What is the next step?
  Answer
    Right a test about it.
    Right a solution.
    Refactor.

'
echo > notes/temporary.txt ''

echo '\nAdding Vitest, c8 and @testing-libraries...\n'
npm i -D vitest @vitest/coverage-c8 jsdom
npm i -D @testing-library/react @testing-library/jest-dom @testing-library/user-event
npm i -D @open-wc/testing     
echo > setupTests.ts "import '@testing-library/jest-dom';"


echo '\nAdding Cypress...\n'
npm i -D cypress

mkdir cypress

echo > cypress/tsconfig.json '{
  "compilerOptions": {
    "target": "es5",
    "lib": ["es5", "dom"],
    "types": ["cypress", "node"]
  },
  "include": ["**/*.ts"]
}
'

echo > cypress/support/index.ts "import './commands'

// Prevent cookie banner
const today = new Date()
Cypress.on(\"window:before:load\", window => {
  window.document.cookie = \`OptanonAlertBoxClosed=${today.toISOString()}\`;
})
"
echo > cypress/support/commands.ts "/// <reference types=\"cypress\" />

declare namespace Cypress {
  interface Chainable<Subject> {
    /**
     * Logs in based on a username and password defined as environment variables.
     * @example cy.login()
     */
    login(): Chainable<string>
  }
}
"

echo >> cypress.config.ts "//add to e2e: baseUrl: 'http://192.168.0.101:5173/', video: false,"

npm run test:cypress


# ---
# # this is for react-scrips configuration
# echo '\nInstaling test Dependencies...\n'
# npm i -D @babel/preset-typescript @jest/globals
# npm i -D @types/jest @testing-library/react @testing-library/jest-dom @testing-library/user-event jest ts-jest
# npm i -D cypress react-scripts
# echo > .babelrc '
# {
#   "presets": ["@babel/preset-env", "@babel/preset-react"]
# }
# '
# ---


mv index.html src/
rm -rf src
cp -r ../react-src-template/ ./

echo '\nAdd declarations to react-app-env.d.ts...\n'
echo > src/react-app-env.d.ts "declare module '*.png';
declare module '*.svg';
declare module '*.jpeg';
declare module '*.jpg';
"


echo '\nMaybe It need some \"npm i -D @types/SOMETHING\" \n'

echo '\nInicialization completed'
}

#WORNKING1
# say -o greetings.aiff "hello" // works

# afplay plays aiff files

# lame -m m greetings.aiff greetings.mp3  // convert audio

function fala-gui() {
  say -v $2 -o greetings.aiff "$1"

  lame -m m greetings.aiff greetings.mp3
}

alias ports="sudo lsof -PiTCP -sTCP:LISTEN"
alias ips-in-use="netstat"
alias killport="npx kill-port $1"

alias say-list="say -v \?"
alias say-voice="say -v $1 "

alias startgit="git init"
alias first_shell_function_alias="function f() {
  echo 'Congratulations GUI you have created your first shell function'
} f"
alias nt="npm test"
alias vscode="~/.vscode/extensions"
alias usezsh="chsh -s /bin/zsh"
alias prev="cd -"
alias gc="git checkout $1"
alias gcb="git checkout -b $1"
alias grl="git reflog"
# falta
alias super-npm="npm i express sequelize-cli cors sequelize jsonwebtoken express-rescue mysql2 joi dotenv body-parser && npm i nodemon -D && npm install -D @types/node mocha chai sinon nyc"
alias ni="npm init -y"
alias nr="npm run"
alias nrd="npm run debug"
alias restart-terminal="clear && exec zsh -l"
alias add="code -a ."



#PATH HISTORY
alias my-path="echo $PATH | tr \":\" \"\n\" "

#VSCODE DIRECTORY/FILES ICONS
alias vscode-extensions="code -a ~/.vscode/extensions"
alias vscode-icon-image="code -a ~/.vscode/extensions/pkief.material-icon-theme-4.15.0/icons/"
alias vscode-icon-add="code -a ~/.vscode/extensions/pkief.material-icon-theme-4.15.0/dist/material-icons.json"
alias vscode-icon-add-folder="code --goto ~/.vscode/extensions/pkief.material-icon-theme-4.15.0/dist/material-icons.json:2187"
alias vscode-icon-add-folder-expanded="code --goto ~/.vscode/extensions/pkief.material-icon-theme-4.15.0/dist/material-icons.json:2747"

function vscode-color-window() {
  mkdir .vscode
  cd .vscode
  echo >> settings.json '{
  "workbench.colorCustomizations": {
    "activityBar.background": "#302241",
    "titleBar.activeBackground": "#302241",
    "titleBar.activeForeground": "#ffee00",
    //  "activityBar.background": "#000000",
    "activityBar.border": "#000000",
    "activityBar.foreground": "#ffee00",
    // "badge.background": "#000000",
    // "badge.foreground": "#000000",
    // "contrastActiveBorder": "#000000",
    // "contrastBorder": "#302241",
    "focusBorder": "#4d9c3fbe",
    "list.activeSelectionBackground": "#000000",
    // "list.activeSelectionForeground": "#000000",
    "list.focusBackground": "#000000",
    "list.focusForeground": "#000000",
    "list.hoverBackground": "#000000",
    // "list.hoverForeground": "#000000",
    "statusBar.background": "#000000",
    // "statusBar.foreground": "#000000",
    // "titleBar.activeBackground": "#000000",
    // "titleBar.activeForeground": "#000000",
    // "titleBar.inactiveBackground": "#000000",
    // "titleBar.inactiveForeground": "#000000",
    "widget.shadow": "#000000"
  }
}
  '
  cd -
}

# echo $PATH | tr ":" "\n" |& tee -a bob  # to save the path history in bob

#FILE
function insert-in-file() {
  getPartOfTheText=$1
  addNewText=$2
  file=$3
  perl -0777 -i -pe 's/'$1'/'$2'\n  '$1'/' $3
  # for debbug:
  # echo "
  # insert-in-file function:
  #   variables:
  #     getPartOfTheText:  $1
  #     addNewText:        $2
  #     file:              $3

  #   mounting script:
  #     perl -0777 -i -pe 's/getPartOfTheText/addNewText\n  getPartOfTheText/' file

  #   final script:
  #     perl -0777 -i -pe 's/"$getPartOfTheText"/"$addNewText"\n  "$getPartOfTheText"/' "$file"
  # "
}

#COPY FROM TERMINAL
alias c="pbcopy < " # cmd | c to copy to clipboard current cmd
alias p="pbpaste "

#FIND AND DELETE
function delete-pasta-sem-titulo(){
  cd ~/Desktop/
  find . -maxdepth 1 -name "* Sem *" -exec rm -rf {} \;
  cd -
}

function getbranch(){
  open https://github.com/tryber/sd-015-b-$1/branches/all\?query\=$2
}

function NOME(){
  echo "Nome: $1"
}

function github-user(){
  open "https://github.com/search?q=$1&type=users"
}

function branch-name(){
  git branch -M $1
}

function github-repo(){
  open "https://github.com/search?q=$1&type=repositories"
}

function git-erase-review(){
  git branch -M to-review
  gc -f main
  git branch -D to-review
}

function get-pr-by-branch(){
  open "https://github.com/tryber/sd-015-b-$1/pulls?q=head:$2"
}

function get-pr-by-title(){
  open "https://github.com/tryber/sd-015-b-$1/pulls?q=$2"
}

function project(){
  gotrybep
  find . -maxdepth 1 -type d -name "*$1*" | while read line; do
  cd $line
  done
  clear
}

function git-create-review(){
  gotrybep
  project $1
  gc main
  gcb to-review
  git pull origin $2
  clear
}

# CLEAR VSCODE CACHE
function cache-clear-vscode() {
  rm -rf ~/Library/Application\ Support/Code/Cache/*\nrm f-rf ~/Library/Application\ Support/Code/CachedData/*
}

# CLEAR MAC CACHE
function cache-clear-mac() {
   cd ~/Library && delete Caches
}

function store(){
  mysql -u root -p12121212 -h 127.0.0.1 -P 3306 -e 'DROP DATABASE IF EXISTS StoreManager;'
}

alias sql2='mysql -u root -p12121212 -h 127.0.0.1 -P 3306'

function first_shell_function() {
  echo "Congratulations GUI you have created your first shell function"
  echo "$1"
  echo "08-02-2022"
}

function error-handler() {
  echo > $1/errorHandler.js "module.exports = (err, _req, res, _next) => {
  if (err.status) return res.status(err.status).json({ message: err.message });
  return res.status(500).json(err.message);
};"
}

function index-express() {
  echo > index.js "require('dotenv').config();
const express = require('express');
const bodyParser = require('body-parser');

const app = express();

app.use(express.json());


app.use(bodyParser.json());

app.get('/', (req, res) => {
  return res.send('hello');
});



const bob = () => {
  const test = 'server running!';
  return test
}

app.listen(3000, () => {
  console.log(bob);
});"
  }

function template() {
  echo > $1/index.js "const template = require('./template');

module.exports = {
  template,
};" && echo > $1/template.js "const template = () => {};

module.exports = template;"
}

function express-index() {
  echo > $1/connection.js ""
}

function connection() {
  echo > $1/connection.js "const mysql = require('mysql2/promise');
require('dotenv').config()

module.exports = mysql.createPool({
    host: process.env.DB_HOST,
    user: process.env.DB_USERNAME,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_DATABASE });"
}

function express-template() {
  mkdir models controllers middlewares services utils constants tests
  mkdir tests/models tests/middlewares tests/services tests/controllers
  touch tests/models.test.js tests/middlewares.test.js tests/services.test.js tests/controllers.test.js
  echo "DB_CONNECTION= \nDB_HOST=localhost \nDB_PORT=3306 \nDB_DATABASE= \nDB_USERNAME=root \nDB_PASSWORD=12121212" > .env
  echo "node_modules \n.env" > .gitignore
  connection models
  template models
  template controllers
  template middlewares
  template services
  template utils
  template constants
}

function new() {
  mkdir $1
  cd $1
  mkdir exercises playground
  npm create -y
  cd exercises && touch exercise{1..$2}.$3 && cd ..
  cd playground && touch playground.js && cd ..
  touch .gitignore && echo "node_modules" > .gitignore
  cd ..
}

function new-npx() {
  NAME=$(pwd)
  cd /Users/guilherme/npx-scripts/
  mkdir $1
  cd $1
  echo "#!/usr/bin/env node" > index.js
  npm init -y
  echo "{
  \"name\": \"$1\",
  \"version\": \"1.0.0\",
  \"main\": \"index.js\",
  \"bin\": \"index.js\",
  \"scripts\": { \"start\": \"node index.js\" }
  }" >  package.json
  cd $NAME
}

function give() {
  echo "You are looking for a file or directory?"
select yn in "file" "directory"; do
    case $yn in
        file ) find /Users/guilherme/Desktop/trabalho-e-estudo -type f -name "$1"; break;;
        directory ) find /Users/guilherme/Desktop/trabalho-e-estudo -type d -name "$1"; break;;
    esac
done
}

function gitall {
git add .
if [ "$1" != "" ]
then
    git commit -m "$1"
else
    git commit -m update
fi
git push
}

function delete {
if [ $1 = "." ] || [ $1 = "/" ] || [ $(pwd)/$1 = $(pwd)/ ]
then
    echo "Are you crazy? You can't delete a file or directory with this command"
else
    rm -rf $(pwd)/$1
fi
}




function aliaser(){
  echo "\nalias $1='$2'" >> ~/.zshrc
  restart-terminal
}


function aliaser-d() {
  cd

  grep -v "alias $1" ~/.zshrc > Desktop/bob2 && mv Desktop/bob2 ~/.zshrc
  cd -
  restart-terminal
}

function aliaser-who() {
  grep "alias $1" ~/.zshrc
}

function t(){
  store
  npm run test $1
}

function myslq-call(){
  mysql -u root -p12121212 -h 127.0.0.1 -P 3306 -e
}

# function db(){
#   npm run test $2
#   cat "./$1.sql" | mysql -u root -p12121212 -h localhost -P 3306
# }

function db-test(){
  echo ""
  echo "\n Database StoreManager will be created after test finishes..."
  echo "\n Running test:  $1***.test.js"
  npm run test $1
  wait
  find . -maxdepth 1 -type f -iname "*store*" | while read line; do
  cat $line | mysql -u root -p12121212 -h localhost -P 3306
  done
  wait
  echo "\n Database StoreManager created with success!!!\n"
}

function post(){
  echo $1 |  \
 http POST http://localhost:3000/"$2" \
 Content-Type:application/json
}

function get(){
 http get http://localhost:3000/"$1"
}

function give(){
 find . -maxdepth 10 -type f -iname "*$1*"
}

function gets(){
 http get http$1://$2
}

#RENAMING FILES
function files-swap-words {
  for file in *$1; do mv "$file" "${file/$2/$3}"; done 
}

#MY-ZSHRC
function zshrc-save(){
  if [ -z "$1" ]; then 
    echo "
    This function will copy the .zshrc and then push to github my-zshrc repo. 
    You need to add a message for the commit to make it work
    Ex.: zshrc-save 'adding new function'
    " 
    return 1
  fi
  currentPath=$(pwd)
  cd /Users/guilherme/Desktop/trabalho-e-estudo/portfolio/my-zshrc/
  rm -rf my-zshrc-scripts.sh
  cd ~/
  cp .zshrc /Users/guilherme/Desktop/trabalho-e-estudo/portfolio/my-zshrc/
  cd /Users/guilherme/Desktop/trabalho-e-estudo/portfolio/my-zshrc/
  mv .zshrc my-zshrc-scripts.sh
  git add .
  git commit -m "chore(.zshrc): $1"
  git push
  cd $currentPath
}

#PATHS
alias trabalho-e-estudo="cd /Users/guilherme/Desktop/trabalho-e-estudo"
alias portfolio="cd /Users/guilherme/Desktop/trabalho-e-estudo/portfolio"
alias portfolio-web="cd /Users/guilherme/Desktop/trabalho-e-estudo/portfolio/portfolio-web"
alias morgana="cd /Users/guilherme/Desktop/trabalho-e-estudo/portfolio/morgana"
alias my-zshrc="cd /Users/guilherme/Desktop/trabalho-e-estudo/portfolio/my-zshrc"
alias pixel-art-js-vanilla="cd /Users/guilherme/Desktop/trabalho-e-estudo/portfolio/pixel-art-js-vanilla"
alias calculator-js-vanilla="cd /Users/guilherme/Desktop/trabalho-e-estudo/portfolio/calculator-js-vanilla"
alias npm-folder="cd /Users/guilherme/.nvm/versions/node/v14.19.0/bin/"
alias npm-node-modules="cd /Users/guilherme/.nvm/versions/node/v14.19.0/lib/node_modules/"
alias npx-folder="~/npx-scripts/"

alias terminal-visual-configuration="p10k configure"
alias npm-list="npm list -g --depth 0"

# sequelize
alias db-create="npx sequelize db:create"
alias db-drop="npx sequelize db:drop"
alias migration-create="npx sequelize migration:generate --name $1"
alias migration="npx sequelize db:migrate"
alias migration-undo="npx sequelize db:migrate:undo"
alias migration-undo-all="npx sequelize db:migrate:undo:all"
alias seed-create="npx sequelize seed:generate --name $1"
alias seed-all="npx sequelize db:seed:all"
alias seed-undo-all="npx sequelize db:seed:undo:all"
alias seed-undo="npx sequelize db:seed:undo"
alias sequel-all="db-drop && db-create && migration && seed-all"

# httrack
alias copy-web="webhttrack"

#HELPFUL WEBSITES
alias linkedin-article="open https://www.linkedin.com/post/new/"
alias linkedin-feed="open https://www.linkedin.com/feed/"
alias linkedin-profile="open https://www.linkedin.com/in/guilhermegiacominidev/"

#HUSKY
function husky-add(){
  npx husky add .husky/$1 $2
}
#GITHUB
function github-add-origin(){
  git branch -M main
  git remote add origin git@github.com:ggiacomini2012/"$1".git
  git push -u origin main
}


function github-add-origin-push(){
  git remote add origin git@github.com:ggiacomini2012/"$1".git
  git push -u origin $2
}
alias github-betrybe="open https://github.com/betrybe"
alias github-gist="open https://gist.github.com/"
alias github-my-repositories="open 'https://github.com/ggiacomini2012?tab=repositories'"
alias github-my-prs="open https://github.com/pulls"
alias github-explore="open https://github.com/explore"
alias github-issues="open https://github.com/issues"
alias github-marketplace="open https://github.com/marketplace"
alias github-me="open https://github.com/ggiacomini2012"
alias github-create-repo="cd /Users/guilherme/node-scripts && node repo.js && cd -"
alias github-delete-repo="cd /Users/guilherme/node-scripts && node deleteRepo.js  && cd -"
function github-kill-and-create-repo() {
  github-delete-repo
  github-create-repo
}

#HEROKU
alias heroku-logs=" heroku logs -t"
alias heroku-apps="heroku apps"
alias heroku-info="heroku apps:info"
alias heroku-add-remote="heroku git:remote -a $1 -r $2"
alias heroku-rename-app="heroku apps:rename -a $1 $2"
alias heroku-docker="heroku stack:set container"
alias heroku-open="heroku open -a "
alias heroku-info="heroku apps:info"
alias heroku-env="heroku config:set "
alias heroku-mars="heroku  buildpacks:set  mars/create-react-app "

function heroku-create-app(){
  heroku apps:create -a $1 -r $1
}

function heroku-destroy-app(){
  heroku apps:destroy $1 --confirm $1
}
#HEROKU-END

#VITE
function vite-create(){
  npm create vite@latest
}

#GITMOJI
function gitmoji-commit {
  gitmoji -c
}
function gitmoji-list {
  gitmoji -l | less
}

#FORMAT-CODE
function format {
  npm run lint:fix
  npm run prettier:fix
}

#GIT
function git-add-origin(){
  git remote add origin git@github.com:ggiacomini2012/"$1".git
}

function git-delete-all-commits() {
  git checkout --orphan temporary-branch
  git branch -D $(git branch)
  git branch -M main
  git reflog expire --expire=90.days.ago --expire-unreachable=now --all
}
function git-remove-unused-code() {
  git commit -m "refactor($1): remove unused code"
  git push
}
function git-minor-changes() {
  git commit -m "chore($1): minor changes"
  git push
}
function git-no-pode() {
  git add .
  git commit -m "chore(oh my god!): akarias says: no pode!"
  git push
}
function git-quick-add-and-push() {
  git add .
  git commit -m "chore(oh my god!): akarias says: no pode!"
  git push
}
function git-ideas() {
  git add notes/*
  git commit -m "chore(notes): refresh ideas and goals"
  git push
}
function git-inicial-commit() {
  git commit --no-verify -m "$1"
}
function git-repository-rights() {
  git remote set-url origin git@github.com:ggiacomini2012/"$1".git
}
function git-restart() {
  rm -rf .git
  git init
}
function git-clear-project() {
  git rebase --root -x "git commit --amend --author=\"ggiacomini2012 <ggiacomini2012@gmail.com>\" --no-edit --allow-empty && git rebase --continue"
  rm -rf .github/ .trybe/
  git remote -v rm origin
}
function git-destroy {
  rm -rf .git
}
alias git-remote="git remote -v"
alias git-remove-origin="git remote -v rm origin "
alias git-rlogs="git reflog"
alias git-time="git reset --hard master@{\"$1 minutes ago\"}"
alias git-back="git reset --hard"

function git-quick-push(){
  git add .
  git commit -m "reorganize later: this commit will be deleted in the future"
  git push
}

function git-commit(){
  git commit -m $1
}

function git-c(){
  npm run commit
  git push
}

function git-fix(){
  git add .
  git commit -m "[fix] $1"
  git push
}

function git-feat(){
  git add .
  git commit -m "feat: $1"
  git push
}

function new-branch(){
  git checkout -b $1
}

function git-new-pr(){
  git add .
  git commit -m "[Guilherme Giacomini Texeira] $1"
  git push
}

function git-repo-connect(){
  repo
  wait
  mkdir $1 && cd $1
  wait
  echo "# Starts $1 repository" >> README.md
  git init
  git add README.md
  git commit -m "[start] $1 repository"
  git branch -M main
  git remote add origin git@github.com:ggiacomini2012/$1.git
  git push -u origin main
}

#NPM E NPX
alias npx-scripts="cd ~/npx-scripts"
function npx-scripts-code() {
  cd ~/npx-scripts && code . && cd -
}
function npx-scripts-code-add() {
  cd ~/npx-scripts && code -a . && cd -
}

#NODE
alias node-scripts="cd ~/node-scripts"
function node-scripts-code() {
  cd ~/node-scripts && code . && cd -
}
function node-scripts-code-add() {
  cd ~/node-scripts && code -a . && cd -
}

#APPLESCRIPT (OSASCRIPT)
function mac(){osascript ./$1.applescript}

#DOCKER
function docker-start(){open -g -a docker}

#--

function new-file(){
  NAME=$(pwd)
  cd /Users/guilherme/node-scripts
  node createNewFile.js $NAME
  cd -
}

function npx-install(){
  NAME=$(pwd)
  cd /Users/guilherme/npx-scripts/$1
  npm i -g
  cd $NAME
}

function npx-remove(){
  NAME=$(pwd)
  cd /Users/guilherme/npx-scripts/$1
  npm remove -g
  cd $NAME
}

# function run(){
#   npm test "req$1"
# }

function hero-push(){
  branch-name main
  git add .
  git commit -m "[update] $2"
  git push $1 main
}

function rename(){
  NAME=$(pwd)
  cd ..
  mv $NAME $1
  cd $1
}

function start-play(){
  python -m http.server
  open https://localhost:8000
}

# browser-sync start --server --files "* .html", "css/* .css", "js/* .js"


function browser-start(){
  browser-sync start  --server --files "src/*"  --port 9999
}

function browser-play(){
  browser-sync start  -p "localhost/mysite" --files "*"  --port 9999
}

function debug-play(){
  cd /Users/guilherme/Desktop/trabalho-e-estudo/playground/true-playgrounds/debug
  add index.html && add script.js
  browser-sync start  --server --files "*" --port 9999
}

function mysql-start(){
  cd /Users/guilherme/Desktop/trabalho-e-estudo/playground/true-playgrounds/mysql-play
  add index.html && add script.js && add style.css
  browser-sync start  --server --files "*" --port 9999
}

function mysql-npm-start(){
    osascript -e 'tell application "Terminal" to do script "cd /Users/guilherme/Desktop/trabalho-e-estudo/playground/true-playgrounds/mysql-play && npm start"'
}

alias mysql-start="mysql-npm-start && mysql-start"

function basics-start(){
  cd /Users/guilherme/Desktop/trabalho-e-estudo/playground/true-playgrounds/basics
  code index.html && code script.js && code style.css
  browser-sync start  --server --files "*" --port 9999
}

function play(){
  python -m http.server 8000 --bind 127.0.0.1
}

function workspace(){
  code -a /Users/guilherme/npx-scripts
  code -a /Users/guilherme/Desktop/trabalho-e-estudo/projetos
  code -a /Users/guilherme/Desktop/trabalho-e-estudo/trybe-exercises
  code -a /Users/guilherme/Desktop/trabalho-e-estudo/playground/true-playgrounds
}

function sql-create(){
  find . -maxdepth 1 -type f -iname "*.sql" | while read line; do
  cat $line | mysql -u root -p12121212 -h localhost -P 3306
  done
  clear
  echo 'DataBase Created with success! 🎉 🎉 🎉'
}

function delete-npm(){
  NAME=$(pwd)
  npm-folder && delete $1
  npm-node-modules && delete $1 && cd $NAME
}

#KILL

#TEMP
function import-index-functions() {
  cd ~/Desktop/trabalho-e-estudo/portifolio/portifolio-web/src/react/global/functions
  npx index-importer-ts
  cd -
}
function start-front() {
  osascript -e 'tell application "Terminal" to do script "cd ~/Desktop/trabalho-e-estudo/projetos/delivery-app/front-end && npm start"'
  ~/Desktop/trabalho-e-estudo/projetos/delivery-app
}
function start-back(){
  osascript -e 'tell application "Terminal" to do script "cd ~/Desktop/trabalho-e-estudo/projetos/delivery-app/back-end && npm run dev"'
  ~/Desktop/trabalho-e-estudo/projetos/delivery-app
}
function start-app(){
  pkill -a Terminal
  pkill -f pm2 && killall node
  start-front
  start-back
}
function blint(){
  cd ~/Desktop/trabalho-e-estudo/projetos/delivery-app/back-end
  npm run lint
  ~/Desktop/trabalho-e-estudo/projetos/delivery-app
}
function blint-styles(){
  cd ~/Desktop/trabalho-e-estudo/projetos/delivery-app/back-end
  npm run lint:styles
  ~/Desktop/trabalho-e-estudo/projetos/delivery-app
}
function blint-fix() {
  cd ~/Desktop/trabalho-e-estudo/projetos/delivery-app/back-end
  npm run lint -- --fix
  ~/Desktop/trabalho-e-estudo/projetos/delivery-app
}
function flint(){
  cd ~/Desktop/trabalho-e-estudo/projetos/delivery-app/front-end
  npm run lint
  ~/Desktop/trabalho-e-estudo/projetos/delivery-app
}
function flint-styles(){
  cd ~/Desktop/trabalho-e-estudo/projetos/delivery-app/front-end
  npm run lint:styles
  ~/Desktop/trabalho-e-estudo/projetos/delivery-app
}
function flint-fix() {
  cd ~/Desktop/trabalho-e-estudo/projetos/delivery-app/front-end
  npm run lint -- --fix
  ~/Desktop/trabalho-e-estudo/projetos/delivery-app
}

function t2(){
  npm run test:dev $1
}
function t(){
  pkill -f pm2 && killall node
  npm run test $1
}
function novo() {
  pkill -f pm2 && killall node
    npm run dev
}
function db() {
  DBNAME=commerce ./scripts/resetdb.sh assets/produtos
  clear
  echo 'MongoDB: Banco de dados commerce resturado com sucesso!'
}

function push() {
  git add .
  git commit -m "[req$1] done"
  git push
}


# TEMP END

function z(){
  git add .
  git commit -m "[testing] sending html string through an api route"
  git push me-playing-with-what-i-learned main
  clear
}

#Killing Mongo
function mongo-kill(){
  brew uninstall mongodb-community
  brew uninstall mongodb-database-tools
  brew uninstall mongosh
  rm -rf /usr/local/etc/mongod.conf
  rm -rf /usr/local/var/log/mongodb
  launchctl remove homebrew.mxcl.mongodb-community
  sudo rm -rf /tmp/mongodb-27017.sock
}

#Restart and log Mongo
function mongo-restart(){
  brew services stop mongodb-community && brew services list
  brew services start mongodb-community && brew services list
}

#Stop and log Mongo
function mongo-stop(){
  sudo brew services stop mongodb-community && brew services list
  mongo --eval "db.getSiblingDB('admin').shutdownServer()"
  clear && echo "mongo is down!"
}

#Start and log Mongo
function mongo-start(){
  sudo brew services start mongodb-community
  sudo mongod --dbpath /System/Volumes/Data/data/db --fork --syslog
  # clear && brew services list
  clear && echo "mongo is running fine!"
}

#Log inside Mongo
function mongo-log(){
 sudo tail /usr/local/var/log/mongodb/mongo.log
}

#Remove sock
function mongo-remove-sock(){
 sudo rm -rf /tmp/mongodb-27017.sock
}

#Mongo
function mongo-install(){
  brew install mongodb-community@5.0
}

#Python
alias python-venv-iniciate="python3 -m venv .venv && source .venv/bin/activate"
alias python-activate="source .venv/bin/activate"
alias python-install="python3 -m pip install -r dev-requirements.txt"
alias python-install-flake8="python -m pip install -U flake8"
alias python-install-black="python -m pip install -U black"
alias python-lint="python3 -m flake8"
function python-test-function() { python3 -m pytest -k $1 }
function python-test() { python3 -m pytest tests/$1*.py }

function bob(){
 variable=$1
  if [ -n "$variable" ] && [ "$(type -t $variable)" == "string" ]
  then
      echo $variable
      echo $1
  fi
}

#### final ###

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
