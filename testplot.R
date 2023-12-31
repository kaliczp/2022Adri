Elt.Hatter1.bxp <- list(stats = EltHatter,
                        n = rep(20, ncol(EltHatter)),
                        names = colnames(EltHatter)
                       )
Elt.Hatter2.bxp <- Elt.Hatter1.bxp
Elt.Hatter1.bxp$stats[,14] <- Elt.Hatter1.bxp$stats[,14] + 200
Elt.Hatter2.bxp$stats[,1:13] <- Elt.Hatter2.bxp$stats[,1:13] + 800

pdf(width = 14)
par(family = "serif", mar = c(3.1,4.1, 1.1, 4.1))
bxp(Elt.Hatter1.bxp, ylim = c(-30,200), yaxs = "i",
    outline = FALSE, border = FALSE,
    ylab = "", axes = FALSE, type = "n")
grid(nx = NA, ny = NULL, lty = 1)
bxp(Elt.Hatter1.bxp, ylim = c(-30,200), yaxs = "i",
    boxfill = c(rep("white", 4), rep("lightblue",10)),
    ylab = "Difference from background average (%)", add = TRUE)
par(new = TRUE)
bxp(Elt.Hatter2.bxp, ylim = c(-90,600), yaxs = "i", yaxt = "n", boxfill = "white")
axis(1,13.5, tck = 1, lab = FALSE, lty = "dotted")
axis(4, at = c(0, 150, 300, 450, 600))
mtext(text = "Difference from background average (%)", side = 4, line = 3)
dev.off()
