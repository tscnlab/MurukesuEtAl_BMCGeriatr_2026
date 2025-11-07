bootstrap <- function(data, metric) {
  resampled_data <-
    sample_size %>%
    map(\(x)
        {resample_within_id(data_extended |> filter(metric == metric), 
                            n_participants = x, 
                            n_replicates = n_replicates,
                            intervention.column = intervention, 
                            varying.variable = effect, 
                            max.number.observations = max_days)}
    ) %>% list_rbind()
  
  #perform the statistical analysis
  bootstrappedModels <- 
    resampled_data %>% 
    rowwise() %>%  
    mutate(model = list(glmer(formula, data = data, family = "poisson")),
           pvalue = model |> tidy() |> pull(p.value) |> _[2]
    ) %>% 
    select(sample_size, effect, pvalue)
   
  #compare the significance level of the test with the threshold significance
  #calculate power based on the fraction of significant results (mean of trues)
  #nest the data for plotting
  
  Power_data <- 
    bootstrappedModels %>% mutate(sign = pvalue <= sign_level) %>% group_by(effect, sample_size) %>% 
    summarize(
      power = mean(sign),
      .groups = "keep"
    ) %>% 
    nest(data = -effect)
  
  Power_data
  
}

