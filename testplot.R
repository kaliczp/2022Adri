Elt.Hatter1.bxp <- list(stats = EltHatter,
                        n = rep(20, ncol(EltHatter)),
                        names = colnames(EltHatter)
                       )
Elt.Hatter2.bxp <- Elt.Hatter1.bxp
Elt.Hatter1.bxp$stats[,14] <- Elt.Hatter1.bxp$stats[,14] + 200
Elt.Hatter2.bxp$stats[,1:13] <- Elt.Hatter2.bxp$stats[,1:13] + 800

bxp(Elt.Hatter1.bxp, ylim = c(-30,200), yaxs = "i",
    boxfill = c(rep("white", 4), rep("lightblue",10)),
    ylab = "Difference from background average (%)")
par(new = TRUE)
bxp(Elt.Hatter2.bxp, ylim = c(-90,600), yaxs = "i", yaxt = "n")
axis(1,13.5, tck = 1, lab = FALSE, col = "lightgray")
axis(4, at = c(0, 150, 300, 450, 600))

par(mar=c(3.1,4.1,0.6,0), fig = c(0, 0.85, 0, 1))
bxp(Elt.Hatter1.bxp, ylim = c(-30,200), xaxs = "i", yaxs = "i")
par(mar=c(3.1,0,0.6,4.1), fig = c(0.85, 1, 0, 1), new = TRUE)
bxp(Elt.Hatter2.bxp, ylim = c(-30, 600), yaxs = "i", yaxt = "n", xaxs = "i")
axis(1,1,"Ho")
