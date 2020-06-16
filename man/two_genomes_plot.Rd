\name{two_genomes_plot}
\alias{two_genomes_plot}

\title{
Creation of non-circular two genomes plots
}
\description{
The function create two genomes plots for comparison of data across two genomes.
}
\usage{
two_genomes_plot(data.chr1="", data.chr2="", data.2geno.plot="",
                theme_sty="theme1", font_size=16,
                xtitle="Genomic position 1", ytitle="Genomic position 2",
                title_font_face="plain", xlabel=1, ylabel=1, lgd_pos=1,
                lgd_title_size=12, lgd_title_font_face="plain", lgd_text_size=10,
                lgd_text_font_face="plain", plot_type="point_gradual", sel_gral_col=1,
                gral_col_tp="blue.white.red", gral_2cols_ct=c("#0016DB", "#FFFF00"),
                gral_3cols_ct=c("#0016DB", "#FFFFFF", "#FFFF00"),
                col_type=1, color_cus="#FF0000", color_mulgp="a:red;b:blue;c:cyan",
                col_transpt=1, symbol_point=16, symbol_point_type=1, point_size=0.8,
                point_size_type=1, line_size=0.2, vertical=2, vertical_col="#000000",
                vertical_size=0.2, vertical_type="solid", horizontal=2,
                horizontal_col="#000000", horizontal_size=0.2, horizontal_type="solid",
                add_border=2, border_col="#000000", linetype="solid", col_lgd=2,
                col_lgd_name="color", col_lgd_mdy_label=2, col_lgd_label="a,b,c",
                size_lgd=2, size_lgd_name="size", size_lgd_mdy_label=2, size_lgd_label="a,b,c",
                shape_lgd=2, shape_lgd_name="symbol", shape_lgd_mdy_label=2,
                shape_lgd_label="a,b,c")
}
\arguments{
  \item{data.chr1}{
    The first dataset defines the genome aligned along the horizontal axis.
  }
  \item{data.chr2}{
    The second dataset defines the genome aligned along the vertical axis.
  }
  \item{data.2geno.plot}{
    The third dataset is the main dataset used to create the two genomes plot.
  }
  \item{theme_sty}{
    Select one figure theme from themes list as "theme1", "theme2",
    "theme3", "theme4", "theme5", "theme6", "theme7", "theme8",
    "theme9", "theme10", "theme11", "theme12", "theme13", "theme14",
    "theme15", "theme16", "theme17" and "theme18".
  }
  \item{font_size}{
    Font size, like 16.
  }
  \item{xtitle}{
    X axis title, like "Genomic position 1".
  }
  \item{ytitle}{
    Y axis title, like "Genomic position 2".
  }
  \item{title_font_face}{
    Font face, like "plain", "italic", "bold" or "bold.italic".
  }
  \item{xlabel}{
    Show or hide tick labels on the X-axis.
    "1" means "show", while "2" means "hide".
  }
  \item{ylabel}{
    Show or hide tick labels on the Y-axis.
    "1" means "show", while "2" means "hide".
  }
  \item{lgd_pos}{
    The position to place the legend.
    "1" means "right", while "2" means "bottom".
  }
  \item{lgd_title_size}{
    The font size of legend title, like 12.
  }
  \item{lgd_title_font_face}{
    The font face of legend title, like "plain", "italic", "bold" or "bold.italic".
  }
  \item{lgd_text_size}{
    The font size of legend tick label, like 10.
  }
  \item{lgd_text_font_face}{
    The font face of legend tick label, like "plain", "italic", "bold" or "bold.italic".
  }
  \item{plot_type}{
    Select one plot type from list "point_gradual", "point_discrete",
    "segment" , "rect_gradual" and "rect_discrete".
  }
  \item{sel_gral_col}{
    If plot_type was set 'point_gradual' or 'rect_gradual'", colors to be used to plot the data.
    By default, this parameter was set as "1" and predefined color would be used.
    If the option was set as "2", color gradient is created as "low-high" pattern.
    If the option was set as "3", color gradient is created as "low-mid-high" pattern.
  }
  \item{gral_col_tp}{
    If sel_gral_col was set "1", select one data color from the following list:
    "blue.white.red", "green.black.red", "green.yellow.red", "purple.yellow.red",
    "blue.green.red", "blue.yellow.green", "cyan.white.deeppink1".
  }
  \item{gral_2cols_ct}{
    If sel_gral_col was set as "2", low-high color to be used for the data, like 'c("#0016DB", "#FFFF00")'.
  }
  \item{gral_3cols_ct}{
    If sel_gral_col was set as "3", low-mid-high color to be used for the data like 'c("#0016DB", "#FFFFFF", "#FFFF00")'.
  }
  \item{col_type}{
    If plot_type was set 'point_discrete', 'segment' or 'rect_discrete'",
    the color to be used to plot the data.
    By default, this parameter was set as "1" and random assigned color would be used.
    To customize one color for data, users should choose a color from the color palette.
    To customize color for data with multiple groups, the column indicating
    different groups should be named as "color" in the input data.
    Users should provide a character string assigning colors to each group.
    For example, "a:red;b:green;c:blue", in which "a b c" represent different data groups.
    Color for data groups without assigned color would be set as "NA".
    Hex color codes as "#FF0000" are also supported. See example data for more details.
    "1" means "random", "2" means "one custom color" and "3" means "custom for data with multi-group".
  }
  \item{color_cus}{
    If "col_type" was set "2", a specific color should be specified using this option, like "#FF0000".
  }
  \item{color_mulgp}{
    If col_type was set as 3, users should provide a character string assigning colors to each group like "a:red;b:blue;c:cyan".
  }
  \item{col_transpt}{
    A decimal number in [0, 1] to adjust the color transparency like 1.
    The higher the value, the deeper the color.
  }
  \item{symbol_point}{
    If plot_type was set "point_gradual" or "point_discrete", symbol used for different points, like 16.
    Applicable values are integers in [0-25].
    Check "http://www.endmemo.com/program/R/pchsymbols.php" for more details.
    A single integer can be used to set the shape of all points.
  }
  \item{symbol_point_type}{
    Symbol used for different points.
    By default, this parameter was set as "1" and one custom symbol would be used.
    If the option was set "2", the uploaded data should include a "shape" column with a categorical character vector.
  }
  \item{point_size}{
    If plot_type was set "point_gradual" or "point_discrete", value used for different size of points, like 0.8.
    A single numeric value can be used to set the size of all points.
  }
  \item{point_size_type}{
    Value used for different size of points.
    By default, this parameter was set as "1" and one custom symbol would be used.
    If the option was set "2", the uploaded data should include a "size" column with a categorical character vector.

  }
  \item{line_size}{
    If plot_type was set "segment", the line width to be used to plot the data, like 0.2.
  }
  \item{vertical}{
    Create a set of vertical lines across the X-axis to separate different chromosomes.
    "1" means "show", while "2" means "hide".
  }
  \item{vertical_col}{
    If vertical was set "1", color of the vertical lines, like "#000000".
  }
  \item{vertical_size}{
    If vertical was set "1", line width of the vertical lines, like 0.2.
  }
  \item{vertical_type}{
    If vertical was set "1", line type of the vertical lines, like "solid", "dashed",
    "dotted", "dotdash", "longdash" or "twodash".
  }
  \item{horizontal}{
    Create a set of horizontal lines across the Y-axis to separate different chromosomes.
    "1" means "show", while "2" means "hide".
  }
  \item{horizontal_col}{
    If horizontal was set "1", color of the horizontal lines, like horizontal_col="#000000".
  }
  \item{horizontal_size}{
    If horizontal was set "1", line width of the horizontal lines, like horizontal_size=0.2.
  }
  \item{horizontal_type}{
    If horizontal was set "1", line type of the horizontal lines, like "solid", "dashed",
    "dotted", "dotdash", "longdash" or "twodash".
  }
  \item{add_border}{
    Add borders to the rect grids, which can be used to separate cells from each other.
    "1" means "add cell borders", while "2" means "not add".
  }
  \item{border_col}{
    Borders color. If add_border was set "1", a specific color should be specified by the users, like "#000000".
  }
  \item{linetype}{
    The line type to be used to plot the data, when plot_type was set "segment",
    like "solid", "dashed", "dotted", "dotdash", "longdash" or "twodash".
  }
  \item{col_lgd}{
    Control the appearance of the color legend in the plotting region.
    "1" means "show", while "2" means "hide".
  }
  \item{col_lgd_name}{
    Title of the color legend, when col_lgd was set "1", like "color".
    Null value will result in an empty title.
  }
  \item{col_lgd_mdy_label}{
    The labels of different colors in the color legend, when col_lgd was set "1" and plot_type was set "point_discrete", "segment" or "rect_discrete".
    "1" means "modify labels", while "2" means "not modify".
  }
  \item{col_lgd_label}{
    If col_lgd_mdy_label was set "1", character vector of arbitrary length is accepted and adjusted automatically
    to the number of groups, which is separated by commas.
    For example, "a" or "a,b,c".
  }
  \item{size_lgd}{
    If plot_type was set "point", control the appearance of the size legend in the plotting region.
    "1" means "show", while "2" means "hide".
  }
  \item{size_lgd_name}{
    Title of the size legend, when size_lgd was set "1", like "size".
    Null value will result in an empty title.
  }
  \item{size_lgd_mdy_label}{
    The labels of legend in size legend, when size_lgd was set "1" and plot_type was set "point_gradual" or "point_discrete".
    "1" means "modify labels", while "2" means "not modify".
  }
  \item{size_lgd_label}{
    If size_lgd_mdy_label was set "1", character vector of arbitrary length is accepted and adjusted automatically
    to the number of groups, which is separated by commas.
    For example, "a" or "a,b,c".
  }
  \item{shape_lgd}{
    If plot_type was set "point", control the appearance of the shape legend in the plotting region.
    "1" means "show", while "2" means "hide".
  }
  \item{shape_lgd_name}{
    Title of the shape legend, when shape_lgd was set "1", like "symbol".
    Null value will result in an empty title.
  }
  \item{shape_lgd_mdy_label}{
    The labels of legend in shape legend, when shape_lgd was set "1" and plot_type was set "point_gradual" or "point_discrete".
    "1" means "modify labels", while "2" means "not modify".
  }
  \item{shape_lgd_label}{
    If shape_lgd_mdy_label was set "1", character vector of arbitrary length is accepted and adjusted automatically
    to the number of groups, which is separated by commas.
    For example, "a" or "a,b,c".
  }
}

\author{
  Yiming Yu, Wen Yao
}

\examples{

data.chr1 <- read.table(system.file("examples/two_genome/genome1_data.txt",
                  package="shinyChromosomeR"), header=TRUE, as.is=TRUE, sep="\t")
head(data.chr1)

data.chr2 <- read.table(system.file("examples/two_genome/genome2_data.txt",
                  package="shinyChromosomeR"), header=TRUE, as.is=TRUE, sep="\t")
head(data.chr2)

data.2geno.plot <- read.table(system.file("examples/two_genome/point_gradual.txt",
                        package="shinyChromosomeR"), header=TRUE, as.is=TRUE, sep="\t")
head(data.2geno.plot)

two_genomes_plot(data.chr1=data.chr1, data.chr2=data.chr2, data.2geno.plot=data.2geno.plot,
                plot_type="point_gradual")

}

