## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

# All chunks that fetch from the network only execute when NOT_CRAN=true
# (the convention used by CRAN's check farm). The vignette still renders
# usefully on CRAN because the chunks that load the bundled demo tree
# from inst/extdata are not gated.
NOT_CRAN <- identical(Sys.getenv("NOT_CRAN"), "true")

## ----api----------------------------------------------------------------------
library(phyloatlas)

ls("package:phyloatlas")

## ----demo-tree----------------------------------------------------------------
demo_path <- system.file("extdata", "tree_demo.nwk", package = "phyloatlas")
tree <- ape::read.tree(demo_path)
tree

## ----demo-plot, fig.width = 6, fig.height = 3---------------------------------
plot(tree, cex = 0.8, no.margin = TRUE)

## ----load-mammals, eval = NOT_CRAN--------------------------------------------
# tree <- load_atlas_tree("mammals")
# tree
# head(tree$tip.label)

## ----load-seedplants, eval = NOT_CRAN-----------------------------------------
# tree <- load_atlas_tree("seed_plants", resolve_labels = FALSE)

## ----list-trees, eval = NOT_CRAN----------------------------------------------
# trees <- list_trees()
# head(trees[, c("name", "study", "ntips", "dated", "year")])
# 
# # Filter to dated trees with at least 1000 tips
# subset(trees, dated & ntips > 1000)

## ----atlas-info, eval = NOT_CRAN----------------------------------------------
# atlas_info("birds")

## ----config, eval = FALSE-----------------------------------------------------
# options(
#   phyloatlas.base_url =
#     "https://raw.githubusercontent.com/yourfork/phylo-species-atlas/main"
# )
# atlas_clear_cache()  # forget cached dictionary/metadata

## ----pkg-version--------------------------------------------------------------
packageVersion("phyloatlas")

