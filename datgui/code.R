HairEye <- subset(as.data.frame(HairEyeColor), Sex == "Male")
n1 <- nPlot(Freq ~ Eye, data = HairEye, group = 'Hair', type = 'multiBarChart')
n1$addControls("x", "Eye", c('Eye', 'Hair'))
n1$addControls("group", "Hair", c('Eye', 'Hair'))
n1$addControls("type", "multiBarChart", values = c('multiBarChart', 'multiBarHorizontalChart'))
n1$setTemplate(script = system.file('libraries', 'nvd3', 'controls', 'datgui.html', package = 'rCharts'))
n1
