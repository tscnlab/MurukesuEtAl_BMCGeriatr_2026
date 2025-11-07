#create a plot function that takes the Power_data for one metric and plots it
plot_power <- function(data, name, power_level = 0.8, breaks) {
  data %>% 
    ggplot(aes(x = sample_size, y = power)) + geom_col() + 
    gghighlight(power >= power_level, use_direct_label = FALSE) +
    geom_hline(yintercept = power_level, col = "red", linetype = "dashed",
               linewidth = 0.25) + 
    theme_cowplot() + 
    annotate("label", x = mean(sample_size), y = power_level+0.1, alpha = 0.75,
             label = "Required Power level", col = "red", size = 1.5,
             label.size = 0.2) + 
    labs(x = "Sample size", y = "Power") +
    scale_x_continuous(breaks = breaks)+
    scale_y_continuous(labels = scales::percent_format(accuracy = 1))+
    coord_cartesian(expand = FALSE, ylim = c(0,1))+
    ggtitle(name)+
    theme(plot.title = element_text(size = 5.5),
          axis.text= element_text(size=6),
          axis.title= element_text(size=6),
          axis.line = element_line(linewidth = 0.25),
          axis.ticks = element_line(linewidth = 0.25)
    )
}
