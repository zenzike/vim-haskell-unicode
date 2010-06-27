" ===========================================================================
" File:        Vim Haskell Unicode Plugin
" Version:     0.2.0
" Description: The most awesome Haskell Unicode plugin for vim
" Maintainer:  Nicolas Wu <nicolas.wu@gmail.com>
" Last Change: 2010 Jun 12
" License:     This file is placed in the public domain.
" ===========================================================================

if exists ("b:haskellunicode")
  finish
endif
let b:haskellunicode = 1


function! s:HaskellToUTF8()
  let l:line = line(".")
  let l:col  = col(".")

  %s/ :: / ∷ /eg
  %s/ => / ⇒ /eg
  %s/\<forall\>/∀/eg
  %s/ -> / → /eg
  %s/ <- / ← /eg

  call cursor(l:line, l:col)
endfunction

command! -buffer HaskellToUTF8 :call s:HaskellToUTF8()

" In files that have UnicodeSyntax enabled,
" and it is not just a comment,
" then allow direct use of shortcuts, and
" replace all occurences of those symbols
"
if search('\(--.*\)\@<!{-#\_.*\<LANGUAGE\>\_.*\<UnicodeSyntax\>\_.*#-}','w') != 0
  iabbrev <buffer> :: ∷
  iabbrev <buffer> => ⇒
  iabbrev <buffer> forall ∀
  iabbrev <buffer> -> →
  iabbrev <buffer> <- ←
  " No longer supported: http://hackage.haskell.org/trac/ghc/ticket/3894
  " imap <buffer> .. ⋯
  "

  call s:HaskellToUTF8()
  redraw | echohl WarningMsg | echo "Converted script to UTF8" |echohl None
endif

" We can enable textual substitutions when the right
" packages are imported
" http://haskell.org/haskellwiki/Unicode-symbols

" Textual substitutions

" iabbrev <buffer> <= ≤
" iabbrev <buffer> >= ≥
" iabbrev <buffer> == ≡
" iabbrev <buffer> /= ≠
" iabbrev <buffer> >> »
" iabbrev <buffer> . ∙

iabbrev <buffer> >< ×
iabbrev <buffer> /\ △
iabbrev <buffer> \/ ▽

iabbrev <buffer> alpha α
iabbrev <buffer> beta β
iabbrev <buffer> gamma γ
iabbrev <buffer> delta δ
iabbrev <buffer> epsilon ∊
iabbrev <buffer> varepsilon ε
iabbrev <buffer> zeta ζ
iabbrev <buffer> eta η
iabbrev <buffer> theta θ
iabbrev <buffer> vartheta ϑ
iabbrev <buffer> iota ι
iabbrev <buffer> kappa κ
iabbrev <buffer> lambda λ
iabbrev <buffer> mu μ
iabbrev <buffer> nu ν
iabbrev <buffer> xi ξ
iabbrev <buffer> pi π
iabbrev <buffer> varpi ϖ
iabbrev <buffer> rho ρ
iabbrev <buffer> varrho ϱ
iabbrev <buffer> sigma σ
iabbrev <buffer> varsigma ς
iabbrev <buffer> tau τ
iabbrev <buffer> upsilon υ
iabbrev <buffer> phi φ
iabbrev <buffer> varphi ϕ
iabbrev <buffer> chi χ
iabbrev <buffer> psi ψ
iabbrev <buffer> omega ω
iabbrev <buffer> Gamma Γ
iabbrev <buffer> Delta Δ
iabbrev <buffer> Theta Θ
iabbrev <buffer> Lambda Λ
iabbrev <buffer> Xi Ξ
iabbrev <buffer> Pi Π
iabbrev <buffer> Upsilon Υ
iabbrev <buffer> Phi Φ
iabbrev <buffer> Psi Ψ
iabbrev <buffer> Omega Ω

