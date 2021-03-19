library(tidyverse)

##selecting variables
GUI_Filtered <- GUI_1235Merge %>% select(ID, xxwave1, xxwave2, xxwave3, xxwave5, MMa5ap2, MML34, FF13, hsdclass, xhsdclass, EIncQuin, b2_psraw, b2_psabscore, b2_pspercentile, 
                                         b2_pstscore, b2_nvabscore, b2_nvpercentile, b2_nvrawscore, b2_nvtscore, b2_SDQconduct, b2_SDQemotional, 
                                         b2_SDQhyper, b2_SDQpeerprobs, b2_SDQtotaldiffs, b2_SDQprosocial, b3_psabscore, b3_pstscore, b3_pspercentile, 
                                         b3_nvabscore, b3_nvpercentile, b3_nvtscore, b3_sdqemotional, b3_sdqconduct, b3_sdqhyper, b3_sdqpeerprobs, 
                                         b3_sdqprosocial, b3_sdqtotaldiffs, WGT_9YRb, b5_SDQconduct, b5_SDQemotional, b5_SDQhyper, b5_SDQpeerprobs,
                                         b5_SDQprosocial, b5_SDQtotaldiffs) 

##renaming variables with nonintuitive names
library(expss)

GUI_Filtered <- GUI_Filtered %>% rename(Primarycaregiver_HighestLevelofEducation_Wave1 = MML34, 
                                        Secondarycaregiver_Highestlevelofeducation = FF13)
GUI_Filtered <- GUI_Filtered %>% rename(PictureSimilarities_rawscore_Age3 = b2_psraw, 
                                        PictureSimilarities_abilityscores_Age3 = b2_psabscore, 
                                        PictureSimilarities_percentile_Age3 = b2_pspercentile, 
                                        PictureSimilarities_tscore_Age3 = b2_pstscore)
GUI_Filtered <- GUI_Filtered %>% rename(Namingvocab_rawscore_Age3 = b2_nvrawscore, 
                                        Namingvocab_abilityscore_Age3 = b2_nvabscore, 
                                        Namingvocab_percentile_Age3 = b2_nvpercentile, 
                                        Namingvocab_tscore_Age3 = b2_nvtscore)
GUI_Filtered <- GUI_Filtered %>% rename(PictureSimilarities_abilityscores_Age5 = b3_psabscore,
                                        PictureSimilarities_percentile_Age5 = b3_pspercentile, 
                                        PictureSimilarities_tscore_Age5 = b3_pstscore)
GUI_Filtered <- GUI_Filtered %>% rename(Namingvocab_abilityscore_Age5 = b3_nvabscore, 
                                        Namingvocab_percentile_Age5 = b3_nvpercentile, 
                                        Namingvocab_tscore_Age5 = b3_nvtscore)
GUI_Filtered <- GUI_Filtered %>% rename(Age3_SDQTotal = b2_SDQtotaldiffs, Age3_SDQEmotional = b2_SDQemotional,
                                        Age3_SDQConduct = b2_SDQconduct, Age3_SDQHyperactivity = b2_SDQhyper,
                                        Age3_SDQPeerproblems = b2_SDQpeerprobs, Age3_Prosocial = b2_SDQprosocial)
GUI_Filtered <- GUI_Filtered %>% rename(Age5_SDQTotal = b3_sdqtotaldiffs, Age5_SDQEmotional = b3_sdqemotional,
                                        Age5_SDQConduct = b3_sdqconduct, Age5_SDQHyperactivity = b3_sdqhyper,
                                        Age5_SDQPeerproblems = b3_sdqpeerprobs, Age5_Prosocial = b3_sdqprosocial)
GUI_Filtered <- GUI_Filtered %>% rename(Age9_SDQTotal = b5_SDQtotaldiffs, Age9_SDQEmotional = b5_SDQemotional,
                                        Age9_SDQConduct = b5_SDQconduct, Age9_SDQHyperactivity = b5_SDQhyper,
                                        Age9_SDQPeerproblems = b5_SDQpeerprobs, Age9_Prosocial = b5_SDQprosocial)
