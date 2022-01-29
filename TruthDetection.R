install.packages("devtools")
devtools::install_github("mattflor/chorddiag")
library(chorddiag)

m <- matrix(c(0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	288,	150,
              0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	78,	342,
              0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	8,	240,
              0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	148,	79,
              0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	11,	161,
              0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	74,	79,
              0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	66,	84,
              0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	63,	85,
              0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	50,	79,
              0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	56,	65,
              0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	50,	61,
              0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	27,	80,
              288,	78,	8,	148,	11,	74,	66,	63,	50,	56,	50,	27,	0,	0,
              150,	342,	240,	79,	161,	79,	84,	85,	79,	65,	61,	80,	0,	0),
            byrow = TRUE,
            nrow = 14, ncol = 14)


sources <- c("Barack Obama",	"Donald Trump",	"Bloggers",	"Hillary Clinton",	"Chain email",	"John McCain",	"Scott Walker",	"Mitt Romney",	"Rick Perry",	"Marco Rubio",	"Rick Scott",	"Ted Cruz",	"Truth",	"Lie")
dimnames(m) <- list(have = sources,
                    prefer = sources)


p <- chorddiag(m, groupnamePadding = 30, margin = 150)
p
library(htmlwidgets)
saveWidget(p, file=paste0( getwd(), "/Desktop/index.html"))
