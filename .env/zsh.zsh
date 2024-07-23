save-function-list

load ~/.zsh/environments/basic.zsh

alias emacs="emacs -nw --load $PWD/.env/emacs.el"

function build() {
  test -d target || mkdir target
  if context Resume.tex CoverLetter.tex; then
    mv Resume.pdf "target/Jakub Stastny Resume.pdf"
    mv CoverLetter.pdf "target/Jakub Stastny Cover Letter.pdf"
    rm *.log *.tuc
  fi
}

report-custom-functions
