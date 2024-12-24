slides:
  tinymist preview --preview-mode slide condensed-slides.typ --font-path "D:\Sync\Projects\Assets\Fonts"

sp:
  typst compile --font-path "D:\Sync\Projects\Assets\Fonts" condensed-slides.typ "slides/page-{0p}-of-{t}.svg"

script:
  tinymist preview --preview-mode document condensed-script.typ

cs:
  typst watch condensed-script.typ
