# LaTeX resume template

This is a very simple, free and ATS friendly $\mathrm{\LaTeX}$ template (it comes with a MIT License).

So far, this template can only be created on Linux, but is easy to port to other operating systems.

## Preview
![*Resume preview.*](preview.jpg)

## Required packages
To create the pdf (on Arch Linux) you will need these packages:

```console
$ sudo pacman -Syu texlive-basic texlive-bibtexextra texlive-bin texlive-binextra \
texlive-context texlive-fontsextra texlive-fontsrecommended texlive-fontutils \
texlive-formatsextra texlive-humanities texlive-langfrench texlive-latex texlive-latexextra \
texlive-latexrecommended texlive-luatex texlive-mathscience texlive-meta \
texlive-metapost texlive-music texlive-pictures texlive-plaingeneric texlive-pstricks \
texlive-publishers texlive-xetex make
```

> [!NOTE]  
> For other distros or operating systems, you can create a PR to add the missing information, otherwise it will take me some time to port it at least to Windows.

## PDF Generation
To create the pdf, I made it really simple. In your terminal you only need to type:
```console
$ make
```
And that's it! Just make sure you are in the same folder as your git repo.

### Makefile
In summary, a Makefile is a file that contains the instructions to create another file. As I mentioned before, `make` is the command to create the pdf. It will only generate a new pdf when either the profile picture, or the tex file gets updated.

> [!NOTE]  
> If you want to rename one or both files, do it also in the Makefile (line 2 and 4).

Other commands available are:

* `make clean` will remove all the 'extra' files (created alongside the pdf) and pdf itself.
* `make rebuild` will do the same thing as `make clean` and additionally it will rebuild the pdf. You will use this command when `make` fails to recognize your changes (which doesn't happen that often).

## Final thoughts
If you have any problems or suggestions, please submit an issue.
