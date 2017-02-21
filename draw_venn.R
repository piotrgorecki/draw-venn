# ---------------------------------------
# Author
# 	Piotr Górecki @ 2017
# ---------------------------------------
# Setup environment
#		install.packages('VennDiagram')
# ---------------------------------------
# Usage
# 	$ R < plot_venn.R --no-save
# ---------------------------------------
# resources:
# 	https://cran.r-project.org/web/packages/VennDiagram/VennDiagram.pdf
# 	https://rstudio-pubs-static.s3.amazonaws.com/13301_6641d73cfac741a59c0a851feb99e98b.html
#	  http://www.statmethods.net/advgraphs/parameters.html
# 	https://stat.ethz.ch/R-manual/R-devel/library/grDevices/html/png.html
# ---------------------------------------

# load library
library(VennDiagram);

# File path for rendered diagram
png(filename = "venn.png", width = 640, height = 640);
#jpeg(filename = "venn.jpg", width = 640, height = 640, quality = 75);
#tiff(filename = "venn.tiff", width = 640, height = 640, compression = "lzw");


# Creating a Venn Diagram with two circles
venn.plot <- draw.pairwise.venn(
	# a, b, a ^ b
	10, 15, 5,

	# category names of the sets
	category = c("Set A", "Set B"),

	# line dash pattern of the circles’ circumferences
	lty = rep("blank", 2),

	# colours of the circles’ areas
	fill = c("light blue", "pink"),

	# alpha transparency of the circles’ areas
	alpha = rep(0.5, 2),

	# positions (in degrees) of the category names along
	# the circles, with 0 (default) at the 12 o’clock location
	cat.pos = c(0, 0),

	# distances (in npc units) of the category names
	# from the edges of the circles (can be negative)
	cat.dist = rep(0.025, 2),

	# draw Euler diagrams (Venn Diagrams with moveable circles)
	euler.d = TRUE,

	# scale circle sizes in the diagram according to set
	# sizes or not (euler.d must be true to enable this)
	scaled = TRUE
);

# clean up
dev.off();
