# test the station flow function


rm(list = ls())

library(riverbeta)
library(tidytable)
library(ggplot2)

river_beta = read.csv(file = "C:/Users/bstacy2/Documents/Rshiny/RiverBeta_V1_BS.csv")

station_id = river_beta$guage_id[2]
# REMEMBER TO APPLY PERCENT CORRECTION SOMEWHERE BEFORE PLOT!
start_date = "2025-03-05"
end_date = "2025-05-21"
beta_min = river_beta$flow_min[2]
beta_max = river_beta$flow_max[2]



station_flow(station_id = station_id,
             start_date = start_date,
             end_date = end_date) -> flow

### Attempt to set smart plot limits, gave up, come back to if needed.
# plot_limits = function(flow_data, beta_min, beta_max){
#
#   flow_data %>%
#     min() -> data.min
#   flow_data %>%
#     max() -> data.max
#
#   # Min, not NA
#   if(!is.na(beta_min)){
#     if(data.min < beta_min){ # data min is less than beta min, then plot min = data min
#       plot.min = data.min
#     }else if()
#   }
#
# }

flow %>%
  ggplot(aes(x = dateTime, y = Flow_Inst)) +
  geom_line() +
  theme_classic() +
  labs(x = "Date", y = "Cubic Feet Per Second") +
  geom_hline(yintercept = beta_min, linetype = "dashed", color = "blue") +
  geom_hline(yintercept = beta_max, linetype = "dashed", color = "darkorange")







