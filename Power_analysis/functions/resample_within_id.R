#function definition to perform the bootstrapping
resample_within_id <- 
  function(data, 
           n_participants,
           intervention.column,
           varying.variable,
           max.number.observations = 1e6,
           n_replicates = 2,
           seed = NULL){
    #set a seed
    if(!is.null(seed)) set.seed(seed)
    
    #prepare the data
    data <- data %>% ungroup() %>% nest(data = -Id)
    
    #create a dataframe with the resamples
    participants <- 
      1:n_replicates %>% 
      map(\(x)
          data %>% 
            sample_n(n_participants, replace = TRUE)
      ) %>% 
      list_rbind(names_to = "resamples") %>% 
      mutate(Id = paste0(Id, "_", 1:n_participants) %>% 
               factor(levels = unique(.))
      )
    
    #un- and re-nest the data, with resampling of days on a intervention/participant level and a varying.variable
    participants %>% unnest(data) %>%
      group_by(resamples, {{ intervention.column }}, {{varying.variable}}, Id) %>%
      sample_frac(replace = TRUE) %>%
      slice_sample(n = max.number.observations) |> 
      ungroup() %>% nest(data = c(-resamples, -{{varying.variable}})) %>%
      mutate(sample_size = n_participants, .before = 1)
  }
