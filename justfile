slides:
  tinymist preview --preview-mode slide condensed-slides.typ --font-path "D:\Sync\Projects\Assets\Fonts"

script:
  tinymist preview --preview-mode document condensed-script.typ

cs:
  typst watch condensed-script.typ