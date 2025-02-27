

muntner_hypertension_2022_table_s2 <- tibble::tribble(
 ~ svy_year, ~variable, ~group, ~estimate, ~ci_lower, ~ci_upper,
 "2009-2010", "Overall", "Overall", 53.5, 50.2, 56.7,
 "2011-2012", "Overall", "Overall", 52.2, 47.7, 56.7,
 "2013-2014", "Overall", "Overall", 54.1, 48.9, 59.3,
 "2015-2016", "Overall", "Overall", 48.6, 44.4, 52.7,
 "2017-2020", "Overall", "Overall", 48.2, 45.7, 50.8,
 "2009-2010", "Age group, years", "18 to 44", 35.5, 26.8, 44.2,
 "2011-2012", "Age group, years", "18 to 44", 42.2, 31.5, 52.9,
 "2013-2014", "Age group, years", "18 to 44", 44.6, 38.2, 50.9,
 "2015-2016", "Age group, years", "18 to 44", 40.0, 33.9, 46.1,
 "2017-2020", "Age group, years", "18 to 44", 40.3, 30.7, 49.9,
 "2009-2010", "Age group, years", "45 to 64", 57.1, 52.6, 62.0,
 "2011-2012", "Age group, years", "45 to 64", 56.2, 49.6, 62.9,
 "2013-2014", "Age group, years", "45 to 64", 57.0, 49.8, 64.2,
 "2015-2016", "Age group, years", "45 to 64", 53.7, 48.1, 59.2,
 "2017-2020", "Age group, years", "45 to 64", 52.0, 47.9, 56.2,
 "2009-2010", "Age group, years", "65 to 74", 59.2, 54.6, 63.7,
 "2011-2012", "Age group, years", "65 to 74", 57.8, 51.1, 64.5,
 "2013-2014", "Age group, years", "65 to 74", 59.2, 54.7, 63.6,
 "2015-2016", "Age group, years", "65 to 74", 51.5, 44.4, 58.5,
 "2017-2020", "Age group, years", "65 to 74", 54.2, 49.3, 59.0,
 "2009-2010", "Age group, years", "75+", 50.3, 44.1, 56.5,
 "2011-2012", "Age group, years", "75+", 42.0, 33.4, 50.6,
 "2013-2014", "Age group, years", "75+", 47.4, 38.6, 56.1,
 "2015-2016", "Age group, years", "75+", 38.2, 31.7, 44.8,
 "2017-2020", "Age group, years", "75+", 36.8, 32.5, 41.3,
 "2009-2010", "Sex", "Women", 57.3, 53.2, 61.4,
 "2011-2012", "Sex", "Women", 55.2, 49.2, 61.2,
 "2013-2014", "Sex", "Women", 57.4, 52.3, 62.5,
 "2015-2016", "Sex", "Women", 52.9 , 47.8, 58.0,
 "2017-2020", "Sex", "Women", 47.9, 44.7, 51.2,
 "2009-2010", "Sex", "Men",	50.7, 47.3, 54.1,
 "2011-2012", "Sex", "Men",	50.2, 46.0, 54.4,
 "2013-2014", "Sex", "Men",	52.1, 45.5, 58.8,
 "2015-2016", "Sex", "Men",	46.0, 41.1, 51.0,
 "2017-2020", "Sex", "Men",	49.0, 44.8, 53.3
)

setDT(muntner_hypertension_2022_table_s2)
usethis::use_data(muntner_hypertension_2022_table_s2, overwrite = TRUE)
