" Vim script file                                       vim600:fdm=marker:
" FileType:   HTML
" Maintainer: Devin Weaver <vim (at) tritarget.com>
" Location:   http://www.vim.org/scripts/script.php?script_id=301

" This is a wrapper script to add extra html support to xml documents.
" Original script can be seen in xml-plugin documentation.

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
" Don't set 'b:did_ftplugin = 1' because that is xml.vim's responsability.

let b:html_mode = 1

if !exists("*HtmlAttribCallback")
function HtmlAttribCallback( xml_tag )
    if a:xml_tag ==? "link"
        return "href=\"\" rel=\"stylesheet\" type=\"text/css\""
    elseif a:xml_tag ==? "frame"
        return "name=\"NAME\" src=\"/\" scrolling=\"auto\" noresize"
    elseif a:xml_tag ==? "frameset"
        return "rows=\"0,*\" cols=\"*,0\" border=\"0\""
    elseif a:xml_tag ==? "img"
        return "src=\"\" width=\"0\" height=\"0\""
    elseif a:xml_tag ==? "a"
        if has("browse")
      " Look up a file to fill the href. Used in local relative file
      " links. typeing your own href before closing the tag with `>'
      " will override this.
            let cwd = getcwd()
            let cwd = substitute (cwd, "\\", "/", "g")
            let href = browse (0, "Link to href...", getcwd(), "")
            let href = substitute (href, cwd . "/", "", "")
            let href = substitute (href, " ", "%20", "g")
        else
            let href = ""
        endif
        return "href=\"" . href . "\""
    else
        return 0
    endif
endfunction
endif

" HTML:  thanks to Johannes Zellner and Benji Fisher.
if exists("loaded_matchit")
    let b:match_ignorecase = 1
    let b:match_words = '<:>,' .
    \ '<\@<=[ou]l\>[^>]*\%(>\|$\):<\@<=li\>:<\@<=/[ou]l>,' .
    \ '<\@<=dl\>[^>]*\%(>\|$\):<\@<=d[td]\>:<\@<=/dl>,' .
    \ '<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>'
endif

" On to loading xml.vim
runtime ftplugin/xml.vim
