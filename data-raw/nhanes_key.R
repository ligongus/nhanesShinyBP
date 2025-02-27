
# variable data -------------------------------------------------------------

nhanes_variables <- tibble::tribble(
                            ~class,                            ~variable,                                                                                        ~label,     ~source,  ~type, ~outcome, ~group, ~subset, ~stratify, ~module,
                          "Survey",                             "svy_id",                                                                      "participant identifier",      "DEMO",  "svy",    FALSE,  FALSE,   FALSE,     FALSE,  "none",
                          "Survey",                            "svy_psu",                                                                       "primary sampling unit",      "DEMO",  "svy",    FALSE,  FALSE,   FALSE,     FALSE,  "none",
                          "Survey",                         "svy_strata",                                                                                      "strata",      "DEMO",  "svy",    FALSE,  FALSE,   FALSE,     FALSE,  "none",
                          "Survey",                     "svy_weight_mec",                                                           "Mobile examination center weights",      "DEMO",  "svy",    FALSE,  FALSE,   FALSE,     FALSE,  "none",
                          "Survey",                     "svy_weight_cal",                                                "Calibrated mobile examination center weights",   "Derived",  "svy",    FALSE,  FALSE,   FALSE,     FALSE,  "none",
                          "Survey",                     "svy_subpop_htn",                                                              "Subpopulation for hypertension",   "Derived",  "svy",    FALSE,  FALSE,   FALSE,     FALSE,  "none",
                          "Survey",                           "svy_year",                                                                                "NHANES cycle",      "DEMO", "time",    FALSE,  FALSE,   FALSE,     FALSE,  "none",
                    "Demographics",                       "demo_age_cat",                                                                         "Age category, years",      "DEMO", "catg",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                    "Demographics",                          "demo_race",                                                                                        "Race",      "DEMO", "catg",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                    "Demographics",                     "demo_age_years",                                                                                  "Age, years",      "DEMO", "ctns",     TRUE,   TRUE,    TRUE,     FALSE,   "htn",
                    "Demographics",                      "demo_pregnant",                                                                                    "Pregnant",      "DEMO", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                    "Demographics",                        "demo_gender",                                                                                      "Gender",      "DEMO", "catg",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                  "Blood pressure",                        "bp_sys_mean",                                                        "Systolic blood pressure (SBP), mm Hg",   "Derived", "ctns",     TRUE,   TRUE,    TRUE,     FALSE,   "htn",
                  "Blood pressure",                        "bp_dia_mean",                                                       "Diastolic blood pressure (DBP), mm Hg",   "Derived", "ctns",     TRUE,   TRUE,    TRUE,     FALSE,   "htn",
                  "Blood pressure",               "bp_cat_meds_excluded",                                                                     "Blood pressure category",   "Derived", "catg",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                  "Blood pressure",               "bp_cat_meds_included",                "Blood pressure category including antihypertensive medication use as a group",   "Derived", "catg",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                  "Blood pressure",                    "bp_control_jnc7",                                        "Blood pressure control defined by the JNC7 guideline",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                  "Blood pressure",                  "bp_control_accaha",                             "Blood pressure control defined by the 2017 ACC/AHA BP guideline",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                  "Blood pressure",                  "bp_control_140_90",                                 "Blood pressure control (SBP < 140 mm Hg and DBP < 90 mm Hg)",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                  "Blood pressure",                  "bp_control_130_80",                                 "Blood pressure control (SBP < 130 mm Hg and DBP < 80 mm Hg)",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                  "Blood pressure",               "bp_uncontrolled_jnc7",                                   "Uncontrolled blood pressure defined by the JNC7 guideline",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                  "Blood pressure",             "bp_uncontrolled_accaha",                        "Uncontrolled blood pressure defined by the 2017 ACC/AHA BP guideline",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                  "Blood pressure",             "bp_uncontrolled_140_90",                   "Uncontrolled blood pressure (SBP \u2265 140 mm Hg or DBP \u2265 90 mm Hg)",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                  "Blood pressure",             "bp_uncontrolled_130_80",                   "Uncontrolled blood pressure (SBP \u2265 130 mm Hg or DBP \u2265 80 mm Hg)",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
     "Antihypertensive medication",                         "bp_med_use",                                               "Self-reported antihypertensive medication use",       "BPQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
     "Antihypertensive medication",            "bp_med_recommended_jnc7",                      "Antihypertensive medications recommended defined by the JNC7 guideline",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
     "Antihypertensive medication",          "bp_med_recommended_accaha",                   "Antihypertensive medications recommended by the 2017 ACC/AHA BP guideline",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
     "Antihypertensive medication",                     "bp_med_n_class",                                               "Number of antihypertensive medication classes",   "Derived", "catg",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
     "Antihypertensive medication",                         "bp_med_ace",                                                                              "ACE inhibitors",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
     "Antihypertensive medication",                        "bp_med_aldo",                                                                     "Aldosterone antagonists",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
     "Antihypertensive medication",                       "bp_med_alpha",                                                                            "Alpha-1 blockers",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
     "Antihypertensive medication",                    "bp_med_angioten",                                                               "Angiotensin receptor blockers",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
     "Antihypertensive medication",                        "bp_med_beta",                                                                               "Beta blockers",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
     "Antihypertensive medication",                     "bp_med_central",                                    "Central alpha1 agonist and other centrally acting agents",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
     "Antihypertensive medication",                         "bp_med_ccb",                                                                    "Calcium channel blockers",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
     "Antihypertensive medication",               "bp_med_diur_Ksparing",                                                                 "Potassium sparing diuretics",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
     "Antihypertensive medication",                   "bp_med_diur_loop",                                                                              "Loop diuretics",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
     "Antihypertensive medication",                    "bp_med_diur_thz",                                                         "Thiazide or thiazide-type diuretics",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
     "Antihypertensive medication",            "bp_med_renin_inhibitors",                                                                     "Direct renin inhibitors",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
     "Antihypertensive medication",                       "bp_med_vasod",                                                                         "Direct vasodilators",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                    "Hypertension",                           "htn_jnc7",                                                  "Hypertension defined by the JNC7 guideline",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                    "Hypertension",                         "htn_accaha",                                       "Hypertension defined by the 2017 ACC/AHA BP guideline",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                    "Hypertension",                          "htn_aware",                                                                   "Awareness of hypertension",       "BPQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                    "Hypertension",                 "htn_resistant_jnc7",                                        "Resistant hypertension defined by the JNC7 guideline",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                    "Hypertension",               "htn_resistant_accaha",                             "Resistant hypertension defined by the 2017 ACC/AHA BP guideline",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                    "Hypertension",           "htn_resistant_accaha_thz",            "Resistant hypertension defined by the JNC7 guideline, requires thiazide diuretic",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                    "Hypertension",             "htn_resistant_jnc7_thz", "Resistant hypertension defined by the 2017 ACC/AHA BP guideline, requires thiazide diuretic",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                   "Comorbidities",                      "cc_n_highrisk",                                                              "Number of high risk conditions",   "Derived", "catg",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                   "Comorbidities",                           "cc_smoke",                                                                              "Smoking status",       "SMQ", "catg",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                   "Comorbidities",                             "cc_bmi",                                                                      "Body mass index, kg/m2",       "WHQ", "catg",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                   "Comorbidities",                        "cc_diabetes",                                                                          "Prevalent diabetes",       "DIQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                   "Comorbidities",                             "cc_ckd",                                                            "Prevalent chronic kidney disease",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                   "Comorbidities",                          "cc_cvd_mi",                                                            "History of myocardial infarction",       "MCQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                   "Comorbidities",                         "cc_cvd_chd",                                                           "History of coronary heart disease",       "MCQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                   "Comorbidities",                      "cc_cvd_stroke",                                                                           "History of stroke",       "MCQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                   "Comorbidities",                       "cc_cvd_ascvd",                                                                            "History of ASCVD",       "MCQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                   "Comorbidities",                          "cc_cvd_hf",                                                                    "History of heart failure",       "MCQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                   "Comorbidities",                         "cc_cvd_any",                                                                              "History of CVD",       "MCQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,   "htn",
                          "Survey",                    "svy_subpop_chol",                                                               "Subpopulation for cholesterol",   "Derived",  "svy",    FALSE,  FALSE,   FALSE,     FALSE,  "none",
                     "Cholesterol",                "chol_measured_never",                                                         "Cholesterol has never been measured",       "BPQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
                     "Cholesterol",                 "chol_measured_last",                                                "Time since having their cholesterol measured",       "BPQ", "catg",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
                     "Cholesterol",                         "chol_total",                                                                    "Total cholesterol, mg/dL",     "TCHOL", "ctns",     TRUE,   TRUE,    TRUE,     FALSE,  "chol",
                     "Cholesterol",                "chol_total_gteq_200",                                                          "Total cholesterol \u2265 200 mg/dL",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
                     "Cholesterol",                "chol_total_gteq_240",                                                          "Total cholesterol \u2265 240 mg/dL",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
                     "Cholesterol",                          "chol_trig",                                                                        "Triglycerides, mg/dL",    "TRIGLY", "ctns",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
                     "Cholesterol",                 "chol_trig_gteq_150",                                                              "Triglycerides \u2265 150 mg/dL",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
                 "HDL Cholesterol",                           "chol_hdl",                                                                      "HDL cholesterol, mg/dL",       "HDL", "ctns",     TRUE,   TRUE,    TRUE,     FALSE,  "chol",
                 "HDL Cholesterol",                       "chol_hdl_low",                                       "HDL cholesterol <40 mg/dL in women (<50 mg/dL in men)",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
                 "LDL Cholesterol",                           "chol_ldl",                                                                      "LDL cholesterol, mg/dL",    "TRIGLY", "ctns",     TRUE,   TRUE,    TRUE,     FALSE,  "chol",
                 "LDL Cholesterol",                      "chol_ldl_5cat",                                                                  "LDL cholesterol categories",   "Derived", "catg",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
                 "LDL Cholesterol",                     "chol_ldl_lt_70",                                                                  "LDL cholesterol < 70 mg/dL",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
                 "LDL Cholesterol",                   "chol_ldl_gteq_70",                                                             "LDL cholesterol \u2265 70 mg/dL",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
                 "LDL Cholesterol",                    "chol_ldl_lt_100",                                                                 "LDL cholesterol < 100 mg/dL",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
                 "LDL Cholesterol",                  "chol_ldl_gteq_100",                                                            "LDL cholesterol \u2265 100 mg/dL",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
                 "LDL Cholesterol",                  "chol_ldl_gteq_190",                                                            "LDL cholesterol \u2265 190 mg/dL",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
                 "LDL Cholesterol",                "chol_ldl_persistent",                      "LDL persistently elevated (LDL \u2265 100 mg/dL while taking a statin)",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
             "Non-HDL Cholesterol",                        "chol_nonhdl",                                                                  "Non-HDL cholesterol, mg/dL",   "Derived", "ctns",     TRUE,   TRUE,    TRUE,     FALSE,  "chol",
             "Non-HDL Cholesterol",                   "chol_nonhdl_5cat",                                                              "Non-HDL cholesterol categories",   "Derived", "catg",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
             "Non-HDL Cholesterol",                 "chol_nonhdl_lt_100",                                                             "Non-HDL cholesterol < 100 mg/dL",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
             "Non-HDL Cholesterol",               "chol_nonhdl_gteq_100",                                                        "Non-HDL cholesterol \u2265 100 mg/dL",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
             "Non-HDL Cholesterol",               "chol_nonhdl_gteq_220",                                                        "Non-HDL cholesterol \u2265 220 mg/dL",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
 "Cholesterol-lowering medication",                       "chol_med_use",                                                    "Taking a cholesterol-lowering medication", "RXQ (???)", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
 "Cholesterol-lowering medication",                    "chol_med_use_sr",                                           "Self-reported cholesterol-lowering medication use",       "BPQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
 "Cholesterol-lowering medication",                    "chol_med_statin",                                                                             "Taking a statin",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
 "Cholesterol-lowering medication",                 "chol_med_ezetimibe",                                                                            "Taking ezetimibe",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
 "Cholesterol-lowering medication",                    "chol_med_pcsk9i",                                                                    "Taking a PCSK9 inhibitor",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
 "Cholesterol-lowering medication",                      "chol_med_bile",                                                              "Taking a bile acid sequestrant",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
 "Cholesterol-lowering medication",               "chol_med_fibric_acid",                                                                            "Taking a fibrate",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
 "Cholesterol-lowering medication",              "chol_med_atorvastatin",                                                                         "Taking atorvastatin",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
 "Cholesterol-lowering medication",               "chol_med_simvastatin",                                                                          "Taking simvastatin",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
 "Cholesterol-lowering medication",              "chol_med_rosuvastatin",                                                                         "Taking rosuvastatin",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
 "Cholesterol-lowering medication",               "chol_med_pravastatin",                                                                          "Taking pravastatin",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
 "Cholesterol-lowering medication",              "chol_med_pitavastatin",                                                                         "Taking pitavastatin",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
 "Cholesterol-lowering medication",               "chol_med_fluvastatin",                                                                          "Taking fluvastatin",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
 "Cholesterol-lowering medication",                "chol_med_lovastatin",                                                                           "Taking lovastatin",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
 "Cholesterol-lowering medication",                     "chol_med_other",                                                "Taking other cholesterol-lowering medication",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
 "Cholesterol-lowering medication",                 "chol_med_addon_use",                         "Taking add-on lipid-lowering therapy (ezetimibe or PCSK9 inhibitor)",       "RXQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
 "Cholesterol-lowering medication",  "chol_med_addon_recommended_ahaacc",                     "Recommended add-on lipid-lowering therapy by the 2018 AHA/ACC guideline",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
 "Cholesterol-lowering medication", "chol_med_statin_recommended_ahaacc",                                          "Recommended a statin by the 2018 AHA/ACC guideline",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
 "Cholesterol-lowering medication",          "chol_med_recommended_ever",                                      "Ever been told to take cholesterol-lowering medication",       "BPQ", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol",
        "Atherosclerotic CVD risk",               "ascvd_risk_vh_ahaacc",                                "Very high ASCVD risk according to the 2018 AHA/ACC guideline",   "Derived", "bnry",     TRUE,   TRUE,    TRUE,      TRUE,  "chol"
 )





# variable descriptions ---------------------------------------------------

variable_description <- tibble::tribble(
 ~variable, ~description,

 "svy_id", "NHANES participant unique identifier.",
 "svy_psu", "Population sampling unit. This variable is used to account for the non-random selection of study participants for NHANES",
 "svy_strata", "Population stratification. This variable is used to account for the non-random selection of study participants for NHANES",
 "svy_weight_mec", "Weight applied to produce statistical estimates for the non-institutionalized US population. This weight is used for calculating means and proportions.",
 "svy_weight_cal", "Weight applied to produce statistical estimates for the non-institutionalized US population. This weight is used for estimating population counts and is recalibrated to account for participants excluded from this analysis due to missing data on systolic blood pressure, diastolic blood pressure or self-reported antihypertensive medication use.",
 "svy_subpop_htn", "This indicates that the person has data needed to be included in the analysis of blood pressure or hypertension data (i.e., they had at least one systolic and diastolic blood pressure measurement and they had information on self-reported antihypertensive medication use).",
 "svy_year", "NHANES survey cycle: 1999-2000, 2001-2002, 2003-2004, 2005-2006, 2007-2008, 2009-2010, 2011-2012, 2013-2014, 2015-2016, 2017-2020. Each cycle is 2 years in length, apart from 2017-2020, which covers 2017 through March of 2020 (approximately 3.2 years)",

 "demo_age_cat", "Age grouping: 18-44, 45-64, 65-74, \u2265 75 years",
 "demo_race", "Self-reported race/ethnicity. From 1999-2000 through 2009-2010 this was available as non-Hispanic White, non-Hispanic Black, Hispanic and other. From 2011-2012 through 2017-2020 this was available as non-Hispanic White, non-Hispanic Black, non-Hispanic Asian, Hispanic and other.",
 "demo_age_years", "Participant age in years.  Participants > 80 years of age are given an age of 80 years. This top-coding was changed from 85 years to 80 with the 2007-2008 cycle (prior to then, was top-coded at 85).",
 "demo_pregnant", "Pregnancy status. This is defined by either self-report of being pregnant or a positive pregnancy test conducted during the study visit.",
 "demo_gender", "Self-reported gender",

 "bp_sys_mean", "Mean systolic blood pressure in mm Hg. This is based on the average of up to 3 readings. Participants were required to have at least one reading. Overall, >95% of participants with at least one systolic blood pressure reading had three readings.  From 1999-2000 through 2015-2016, systolic blood pressure was measured using a mercury sphygmomanometer.  In 2017-2020, systolic blood pressure was measured using an oscillometric device.  The systolic blood pressure in 2017-2020 was calibrated to the mercury device by adding 1.5 mm Hg to the mean measured oscillometric value.",
 "bp_dia_mean", "Mean diastolic blood pressure in mm Hg. This is based on the average of up to 3 readings. Participants were required to have at least one reading. Overall, >95% of participants with at least one diastolic blood pressure reading had three readings.  From 1999-2000 through 2015-2016, diastolic blood pressure was measured using a mercury sphygmomanometer.  In 2017-2020, diastolic blood pressure was measured using an oscillometric device.  The diastolic blood pressure in 2017-2020 was calibrated to the mercury device by subtracting 1.3 mm Hg to the mean measured oscillometric value.",
 "bp_cat_meds_excluded", "Systolic/diastolic blood pressure <120/80, 120-129/<80, 130-139/80-89, 140-159/90-99, \u2265 160/100. All participants were placed in the category associated with a higher blood pressure (e.g., someone with systolic blood pressure of 150 mm Hg and diastolic blood pressure of 76 mm Hg was placed in the 140-159/90-99 mm Hg category)",
 "bp_cat_meds_included", "Systolic/diastolic blood pressure <120/80, 120-129/<80, 130-139/80-89, 140-159/90-99, \u2265 160/100. Participants taking antihypertensive medication were placed in a separate category.  Participants were placed in the category associated with higher blood pressure (e.g., someone with systolic blood pressure of 150 mm Hg and diastolic blood pressure of 76 mm Hg was placed in the 140-159/90-99 mm Hg category)",
 "bp_control_jnc7", "Systolic and diastolic blood pressure controlled to the levels recommended in the JNC7 guideline, systolic blood pressure < 140 mm Hg and diastolic blood pressure < 90 mm Hg except for those with diabetes or chronic kidney disease, where blood pressure control was defined by systolic blood pressure < 130 mm Hg and diastolic blood pressure < 80 mm Hg.",
 "bp_control_accaha", "Systolic and diastolic blood pressure controlled to the levels recommended in the 2017 ACC/AHA BP guideline, systolic blood pressure < 130 mm Hg and diastolic blood pressure < 80 mm Hg except for those \u2265 65 years of age without diabetes, chronic kidney disease, history of cardiovascular disease or 10-year predicted ASCVD risk \u2265 10% estimated using the Pooled Cohort risk equations. For this group, blood pressure control was defined as systolic blood pressure < 130 mm Hg",
 "bp_control_140_90", "Systolic blood pressure < 140 mm Hg and diastolic blood pressure < 90 mm Hg",
 "bp_control_130_80", "Systolic blood pressure < 130 mm Hg and diastolic blood pressure < 80 mm Hg",
 "bp_uncontrolled_jnc7", "Systolic blood pressure ≥ 140 mm Hg or diastolic blood pressure ≥ 90 mm Hg  for those without diabetes and without chronic kidney disease; Systolic blood pressure ≥ 130 mm Hg or diastolic blood pressure ≥ 80 mm Hg for those with diabetes or chronic kidney disease",
 "bp_uncontrolled_accaha", "Systolic blood pressure ≥ 130 mm Hg or diastolic blood pressure ≥ 80 mm Hg except for adults ≥ 65 years of age without diabetes, chronic kidney disease, history of cardiovascular disease or 10-year predicted ASCVD risk ≥ 10%. For this group, uncontrolled blood pressure was defined as systolic blood pressure ≥ 130 mm Hg.",
 "bp_uncontrolled_140_90", "Systolic blood pressure \u2265 140 mm Hg or diastolic blood pressure \u2265 90 mm Hg",
 "bp_uncontrolled_130_80", "Systolic blood pressure \u2265 130 mm Hg or diastolic blood pressure \u2265 80 mm Hg",

 "bp_med_use", "Self-reported use of antihypertensive medication",
 "bp_med_recommended_jnc7", "Systolic blood pressure \u2265 140 mm Hg or diastolic blood pressure \u2265 90 mm Hg; Systolic blood pressure \u2265 130 mm Hg or diastolic blood pressure \u2265 80 mm Hg for those with chronic kidney disease or diabetes. Those taking antihypertensive medications were considered to be recommended treatment.",
 "bp_med_recommended_accaha", "Systolic blood pressure ≥ 130 mm Hg or diastolic blood pressure ≥ 80 mm Hg; Systolic blood pressure ≥ 130 mm Hg for those age ≥ 65 years without diabetes, chronic kidney disease, history of cardiovascular disease, or 10-year predicted atherosclerotic cardiovascular disease risk ≥ 10% by the pooled cohort risk equations. Those taking antihypertensive medications were considered to be recommended treatment.",
 "bp_med_n_class", "Number of antihypertensive medication classes being taken based on the pill bottle review",
 "bp_med_ace", "Taking an angiotensin converting enzyme inhibitor, defined using the pill bottle review. Drugs in this class included benazepril, captopril, enalapril, fosinopril, lisinopril, moexipril, perindopril, quinapril, ramipril, trandolapril",
 "bp_med_aldo", "Taking an aldosterone antagonist, defined using the pill bottle review. Drugs in this class included eplerenone, spironolactone.",
 "bp_med_alpha", "Taking an alpha blocker, defined using the pill bottle review. Drugs in this class included doxazosin, prazosin, terazosin.",
 "bp_med_angioten", "Taking an angiotensin receptor blocker, defined using the pill bottle review. Drugs in this class included candesartan, eprosartan, irbesartan, losartan, olmesartan, telmisartan, valsartan, azilsartan.",
 "bp_med_beta", "Taking a beta blocker. Drugs in this class included acebutolol, atenolol, betaxolol, bisoprolol, carvedilol, labetalol, metoprolol, nadolol, nebivolol, pindolol, propranolol.",
 "bp_med_central", "Taking a centrally acting agents, defined using the pill bottle review. Drugs in this class included clonidine, guanabenz, guanfacine, methyldopa, reserpine.",
 "bp_med_ccb", "Taking a calcium channel blocker, defined using the pill bottle review. Drugs in this class included amlodipine, diltiazem, felodipine, isradipine, nicardipine, nifedipine, nisoldipine, verapamil.",
 "bp_med_diur_Ksparing", "Taking a potassium-sparing diuretic, defined using the pill bottle review. Drugs in this class included amiloride, triamterene.",
 "bp_med_diur_loop", "Taking a loop diuretic, defined using the pill bottle review. Drugs in this class included bumetanide, furosemide, torsemide, ethacrynic acid.",
 "bp_med_diur_thz", "Taking a thiazide diuretic, defined using the pill bottle review. Drugs in this class included bendroflumethiazide, chlorthalidone, chlorothiazide, hydrochlorothiazide, indapamide, metolazone, polythiazide.",
 "bp_med_renin_inhibitors", "Taking a renin inhibitor, defined using the pill bottle review. Drugs in this class included aliskiren.",
 "bp_med_vasod", "Taking a vasodilator, defined using the pill bottle review. Drugs in this class included hydralazine, minoxidil.",

 "htn_jnc7", "Hypertension defined by the JNC7 guideline, systolic blood pressure \u2265 140 mm Hg, diastolic blood pressure \u2265 90 mm Hg or self-reported antihypertensive medication use.",
 "htn_accaha", "Hypertension defined by the 2017 ACC/AHA blood pressure guideline, systolic blood pressure \u2265 130 mm Hg, diastolic blood pressure \u2265 80 mm Hg or self-reported antihypertensive medication use.",
 "htn_aware", "Self-report of a prior diagnosis of antihypertensive medication.",
 "htn_resistant_jnc7", "Taking 4 or more classes of antihypertensive medication, systolic blood pressure \u2265 140 mm Hg or diastolic blood pressure \u2265 90 mm Hg with the use of 3 classes of antihypertensive medication, or systolic blood pressure \u2265 130 mm Hg or diastolic blood pressure \u2265 80 mm Hg with the use of 3 classes of antihypertensive medication for those with diabetes or chronic kidney disease.",
 "htn_resistant_accaha", "Taking 4 or more classes of antihypertensive medication; systolic blood pressure ≥ 130 mm Hg or diastolic blood pressure ≥ 80 mm Hg with the use of 3 classes of antihypertensive medication for those < 65 years of age and those ≥ 65 years of age with diabetes, chronic kidney disease, history of cardiovascular disease or 10-year predicted ASCVD risk ≥ 10%; Systolic blood pressure ≥ 130 mm Hg with the use of 3 classes of antihypertensive medication for those ≥ 65 years of age without diabetes, chronic kidney disease, history of cardiovascular disease or 10-year predicted ASCVD risk ≥ 10%.",
 "htn_resistant_jnc7_thz", "Taking 4 or more classes of antihypertensive medication, systolic blood pressure \u2265 140 mm Hg or diastolic blood pressure \u2265 90 mm Hg with the use of 3 classes of antihypertensive medication, or systolic blood pressure \u2265 130 mm Hg or diastolic blood pressure \u2265 80 mm Hg with the use of 3 classes of antihypertensive medication for those with diabetes or chronic kidney disease.  To meet this definition of resistant hypertension, the participant had to be taking a thiazide diuretic.",
 "htn_resistant_accaha_thz", "Taking 4 or more classes of antihypertensive medication; systolic blood pressure ≥ 130 mm Hg or diastolic blood pressure ≥ 80 mm Hg with the use of 3 classes of antihypertensive medication for those < 65 years of age and those ≥ 65 years of age with diabetes, chronic kidney disease, history of cardiovascular disease or 10-year predicted ASCVD risk ≥ 10%; Systolic blood pressure ≥ 130 mm Hg with the use of 3 classes of antihypertensive medication for those ≥ 65 years of age without diabetes, chronic kidney disease, history of cardiovascular disease or 10-year predicted ASCVD risk ≥ 10%.  To meet this definition of resistant hypertension, the participant had to be taking a thiazide diuretic.",

 "cc_n_highrisk", "Self-reported history of coronary heart disease, myocardial infarction, stroke or heart failure or 10-year predicted risk \u2265 10% estimated by the pooled cohort risk equations",
 "cc_smoke", "Self-reported current cigarette smoking",
 "cc_bmi", "Body mass index in kg/m2, estimated using the height and weight measured during the study examination.",
 "cc_diabetes", "HbA1c \u2265 6.5% or self-report of a prior diagnosis of diabetes with self-reported use of insulin or oral glucose-lowering medications.",
 "cc_ckd", "Estimated glomerular filtration rate < 60 ml/min/1.73 m2 or albumin-to-creatinine > 30 mg/g. Estimated glomerular filtration rate was calculated using the 2021 serum creatinine-based equation.",
 "cc_cvd_mi", "Self-reported history of myocardial infarction",
 "cc_cvd_chd", "Self-reported history of myocardial infarction or coronary heart disease",
 "cc_cvd_stroke", "Self-reported history of stroke",
 "cc_cvd_ascvd", "Self-reported history of coronary heart disease, myocardial infarction or stroke",
 "cc_cvd_hf", "Self-reported history of heart failure",
 "cc_cvd_any", "Self-reported history of coronary heart disease, myocardial infarction, stroke or heart failure"
)



# Merge/export ------------------------------------------------------------

nhanes_key <- dplyr::left_join(nhanes_variables, variable_description)

data.table::setDT(nhanes_key)

usethis::use_data(nhanes_key, overwrite = TRUE)
