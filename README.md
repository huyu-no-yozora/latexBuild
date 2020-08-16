# latexBuild

## Usage
```yaml
jobs:
  build:
    name: LaTeX Build
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v2
        
      - name: Build LaTeX file
        uses: huyu-no-yozora/latexBuild@master
        with: 
          root_file: '<root tex file name>'
          compiler: latexmk
          args: '-cd -r ./.latexmkrc -f -gg'
```

## License
This code is licensed by [MIT](LICENSE).


