% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nhanes_data.R
\docType{data}
\name{nhanes_data}
\alias{nhanes_data}
\title{NHANES data, 1999-2020}
\format{
An object of class \code{data.table} (inherits from \code{data.frame}) with 59799 rows and 102 columns.
}
\source{
\url{https://wwwn.cdc.gov/nchs/nhanes/continuousnhanes/default.aspx}
}
\usage{
nhanes_data
}
\description{
The NHANES program was initiated in the early 1960s and beginning in 1999 has been conducted continuously, in two-year cycles. The protocols for each cycle were approved by the NCHS Institutional Review Board. Written informed consent was obtained from each participant.
}
\details{
NHANES data include in-home interviews and study examinations conducted at mobile examination centers. The interview included questions about demographics, health behaviors, prior diagnoses, medication use, and medical history. During the interview, the labels of medications that participants reported taking in the preceding 30 days were recorded. During the study examination, height and weight were measured, blood samples were used to measure cholesterol, glycated hemoglobin and serum creatinine, and a spot urine sample was used to measure albumin and creatinine and to conduct a pregnancy test.

Currently, two sub-populations are included in \code{nhanes_data}:
\itemize{
\item blood pressure and hypertension (n = 56,017)
\item lipids and cholesterol (n = 25,151)
}

To access a sub-population, simply filter \code{nhanes_data} to contain rows
where the corresponding sub-population indicator is equal to 1, e.g.,

\if{html}{\out{<div class="sourceCode r">}}\preformatted{# for blood pressure and hypertension sub-population
nhanes_data[svy_subpop_htn == 1]

# for lipids and cholesterol sub-population
nhanes_data[svy_subpop_chol == 1]
}\if{html}{\out{</div>}}
}
\section{Survey variables}{
In each NHANES cycle, potential participants were identified using a
multi-stage sampling process. The variables below are based on this
process.
\subsection{svy_id}{
\itemize{
\item \strong{Label}: participant identifier
\item \strong{Description}: NHANES participant unique identifier.
}
}

\subsection{svy_psu}{
\itemize{
\item \strong{Label}: primary sampling unit
\item \strong{Description}: Population sampling unit. This variable is used to
account for the non-random selection of study participants for NHANES
}
}

\subsection{svy_strata}{
\itemize{
\item \strong{Label}: strata
\item \strong{Description}: Population stratification. This variable is used to
account for the non-random selection of study participants for NHANES
}
}

\subsection{svy_weight_mec}{
\itemize{
\item \strong{Label}: Mobile examination center weights
\item \strong{Description}: Weight applied to produce statistical estimates for
the non-institutionalized US population. This weight is used for
calculating means and proportions.
}
}

\subsection{svy_subpop_htn}{
\itemize{
\item \strong{Label}: Subpopulation for hypertension
\item \strong{Description}: This indicates that the person has data needed to be
included in the analysis of blood pressure or hypertension data (i.e.,
they had at least one systolic and diastolic blood pressure
measurement and they had information on self-reported antihypertensive
medication use).
}
}

\subsection{svy_year}{
\itemize{
\item \strong{Label}: NHANES cycle
\item \strong{Description}: NHANES survey cycle: 1999-2000, 2001-2002, 2003-2004,
2005-2006, 2007-2008, 2009-2010, 2011-2012, 2013-2014, 2015-2016,
2017-2020. Each cycle is 2 years in length, apart from 2017-2020,
which covers 2017 through March of 2020 (approximately 3.2 years)
}
}
}

\section{Demographics variables}{
The NHANES in-home interview included questions about participant
demographics, including age, sex, race/ethnicity, and pregnancy status
\subsection{demo_age_cat}{
\itemize{
\item \strong{Label}: Age category, years
\item \strong{Description}: Age grouping: 18-44, 45-64, 65-74, >= 75 years
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{18 to 44}: 26,096 (46.6\%)
\item \emph{45 to 64}: 17,155 (30.6\%)
\item \emph{65 to 74}: 7,013 (12.5\%)
\item \emph{75+}: 5,753 (10.3\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{demo_race}{
\itemize{
\item \strong{Label}: Race
\item \strong{Description}: Self-reported race/ethnicity. From 1999-2000 through
2009-2010 this was available as non-Hispanic White, non-Hispanic
Black, Hispanic and other. From 2011-2012 through 2017-2020 this was
available as non-Hispanic White, non-Hispanic Black, non-Hispanic
Asian, Hispanic and other.
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{Non-Hispanic White}: 23,980 (42.8\%)
\item \emph{Non-Hispanic Black}: 12,355 (22.1\%)
\item \emph{Non-Hispanic Asian}: 2,946 (5.26\%)
\item \emph{Hispanic}: 14,520 (25.9\%)
\item \emph{Other}: 2,216 (3.96\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{demo_age_years}{
\itemize{
\item \strong{Label}: Age, years
\item \strong{Description}: Participant age in years. Participants > 80 years of
age are given an age of 80 years. This top-coding was changed from 85
years to 80 with the 2007-2008 cycle (prior to then, was top-coded at
85).
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Mean (standard deviation)}: 47.49 (19.15)
\item \strong{Median (25th, 75th percentile)}: 31.00 (47.00, 63.00)
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{demo_pregnant}{
\itemize{
\item \strong{Label}: Pregnant
\item \strong{Description}: Pregnancy status. This is defined by either
self-report of being pregnant or a positive pregnancy test conducted
during the study visit.
\item \strong{Number of observed values}: 55,597 (99.3\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 54,084 (97.3\%)
\item \emph{Yes}: 1,513 (2.72\%)
}
\item \strong{Number of missing values}: 420 (0.75\%)
}
}

\subsection{demo_gender}{
\itemize{
\item \strong{Label}: Gender
\item \strong{Description}: Self-reported gender
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{Men}: 27,242 (48.6\%)
\item \emph{Women}: 28,775 (51.4\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}
}

\section{Blood pressure variables}{
Systolic and diastolic BP (SBP and DBP, respectively) were measured
three times by trained and certified physicians. BP was measured using a
mercury sphygmomanometer from 1999-2000 through 2015-2016 and using an
oscillometric device in 2017-2020. The oscillometric SBP and DBP values
were calibrated to the mercury device. Mean SBP and DBP levels were
computed over all available
\subsection{bp_sys_mean}{
\itemize{
\item \strong{Label}: Systolic blood pressure (SBP), mm Hg
\item \strong{Description}: Mean systolic blood pressure in mm Hg. This is based
on the average of up to 3 readings. Participants were required to have
at least one reading. Overall, >95\% of participants with at least one
systolic blood pressure reading had three readings. From 1999-2000
through 2015-2016, systolic blood pressure was measured using a
mercury sphygmomanometer. In 2017-2020, systolic blood pressure was
measured using an oscillometric device. The systolic blood pressure in
2017-2020 was calibrated to the mercury device by adding 1.5 mm Hg to
the mean measured oscillometric value.
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Mean (standard deviation)}: 124.06 (19.34)
\item \strong{Median (25th, 75th percentile)}: 110.67 (120.67, 134.00)
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{bp_dia_mean}{
\itemize{
\item \strong{Label}: Diastolic blood pressure (DBP), mm Hg
\item \strong{Description}: Mean diastolic blood pressure in mm Hg. This is based
on the average of up to 3 readings. Participants were required to have
at least one reading. Overall, >95\% of participants with at least one
diastolic blood pressure reading had three readings. From 1999-2000
through 2015-2016, diastolic blood pressure was measured using a
mercury sphygmomanometer. In 2017-2020, diastolic blood pressure was
measured using an oscillometric device. The diastolic blood pressure
in 2017-2020 was calibrated to the mercury device by subtracting 1.3
mm Hg to the mean measured oscillometric value.
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Mean (standard deviation)}: 70.34 (12.10)
\item \strong{Median (25th, 75th percentile)}: 62.67 (70.37, 78.00)
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{bp_cat_meds_excluded}{
\itemize{
\item \strong{Label}: Blood pressure category
\item \strong{Description}: Systolic/diastolic blood pressure <120/80,
120-129/<80, 130-139/80-89, 140-159/90-99, >= 160/100. All
participants were placed in the category associated with a higher
blood pressure (e.g., someone with systolic blood pressure of 150 mm
Hg and diastolic blood pressure of 76 mm Hg was placed in the
140-159/90-99 mm Hg category)
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{SBP <120 and DBP <80 mm Hg}: 25,278 (45.1\%)
\item \emph{SBP of 120 to <130 and DBP <80 mm Hg}: 8,962 (16.0\%)
\item \emph{SBP of 130 to <140 or DBP 80 to <90 mm Hg}: 10,854 (19.4\%)
\item \emph{SBP of 140 to <160 or DBP 90 to <100 mm Hg}: 7,617 (13.6\%)
\item \emph{SBP 160+ or DBP 100+ mm Hg}: 3,306 (5.90\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{bp_cat_meds_included}{
\itemize{
\item \strong{Label}: Blood pressure category including antihypertensive
medication use as a group
\item \strong{Description}: Systolic/diastolic blood pressure <120/80,
120-129/<80, 130-139/80-89, 140-159/90-99, >= 160/100. Participants
taking antihypertensive medication were placed in a separate category.
Participants were placed in the category associated with higher blood
pressure (e.g., someone with systolic blood pressure of 150 mm Hg and
diastolic blood pressure of 76 mm Hg was placed in the 140-159/90-99
mm Hg category)
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{SBP <120 and DBP <80 mm Hg}: 22,359 (39.9\%)
\item \emph{SBP of 120 to <130 and DBP < 80 mm Hg}: 6,702 (12.0\%)
\item \emph{SBP of 130 to <140 or DBP 80 to <90 mm Hg}: 7,579 (13.5\%)
\item \emph{SBP of 140 to <160 or DBP 90 to <100 mm Hg}: 4,122 (7.36\%)
\item \emph{SBP 160+ or DBP 100+ mm Hg}: 1,508 (2.69\%)
\item \emph{taking antihypertensive medications}: 13,747 (24.5\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{bp_control_jnc7}{
\itemize{
\item \strong{Label}: Blood pressure control defined by the JNC7 guideline
\item \strong{Description}: Systolic and diastolic blood pressure controlled to
the levels recommended in the JNC7 guideline, systolic blood pressure
< 140 mm Hg and diastolic blood pressure < 90 mm Hg except for those
with diabetes or chronic kidney disease, where blood pressure control
was defined by systolic blood pressure < 130 mm Hg and diastolic
blood pressure < 80 mm Hg.
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 13,868 (24.8\%)
\item \emph{Yes}: 42,149 (75.2\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{bp_control_accaha}{
\itemize{
\item \strong{Label}: Blood pressure control defined by the 2017 ACC/AHA BP
guideline
\item \strong{Description}: Systolic and diastolic blood pressure controlled to
the levels recommended in the 2017 ACC/AHA BP guideline, systolic
blood pressure < 130 mm Hg and diastolic blood pressure < 80 mm Hg
except for those >= 65 years of age without diabetes, chronic kidney
disease, history of cardiovascular disease or 10-year predicted ASCVD
risk >= 10\% estimated using the Pooled Cohort risk equations. For
this group, blood pressure control was defined as systolic blood
pressure < 130 mm Hg
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 21,740 (38.8\%)
\item \emph{Yes}: 34,277 (61.2\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{bp_control_140_90}{
\itemize{
\item \strong{Label}: Blood pressure control (SBP < 140 mm Hg and DBP < 90 mm
Hg)
\item \strong{Description}: Systolic blood pressure < 140 mm Hg and diastolic
blood pressure < 90 mm Hg
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 10,923 (19.5\%)
\item \emph{Yes}: 45,094 (80.5\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{bp_control_130_80}{
\itemize{
\item \strong{Label}: Blood pressure control (SBP < 130 mm Hg and DBP < 80 mm
Hg)
\item \strong{Description}: Systolic blood pressure < 130 mm Hg and diastolic
blood pressure < 80 mm Hg
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 21,777 (38.9\%)
\item \emph{Yes}: 34,240 (61.1\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{bp_uncontrolled_jnc7}{
\itemize{
\item \strong{Label}: Uncontrolled blood pressure defined by the JNC7 guideline
\item \strong{Description}: Systolic blood pressure = 140 mm Hg or diastolic
blood pressure = 90 mm Hg for those without diabetes and without
chronic kidney disease; Systolic blood pressure = 130 mm Hg or
diastolic blood pressure = 80 mm Hg for those with diabetes or chronic
kidney disease
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 42,149 (75.2\%)
\item \emph{Yes}: 13,868 (24.8\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{bp_uncontrolled_accaha}{
\itemize{
\item \strong{Label}: Uncontrolled blood pressure defined by the 2017 ACC/AHA BP
guideline
\item \strong{Description}: Systolic blood pressure = 130 mm Hg or diastolic
blood pressure = 80 mm Hg except for adults = 65 years of age without
diabetes, chronic kidney disease, history of cardiovascular disease or
10-year predicted ASCVD risk = 10\%. For this group, uncontrolled blood
pressure was defined as systolic blood pressure = 130 mm Hg.
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 34,277 (61.2\%)
\item \emph{Yes}: 21,740 (38.8\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{bp_uncontrolled_140_90}{
\itemize{
\item \strong{Label}: Uncontrolled blood pressure (SBP >= 140 mm Hg or DBP >=
90 mm Hg)
\item \strong{Description}: Systolic blood pressure >= 140 mm Hg or diastolic
blood pressure >= 90 mm Hg
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 45,094 (80.5\%)
\item \emph{Yes}: 10,923 (19.5\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{bp_uncontrolled_130_80}{
\itemize{
\item \strong{Label}: Uncontrolled blood pressure (SBP >= 130 mm Hg or DBP >=
80 mm Hg)
\item \strong{Description}: Systolic blood pressure >= 130 mm Hg or diastolic
blood pressure >= 80 mm Hg
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 34,240 (61.1\%)
\item \emph{Yes}: 21,777 (38.9\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}
}

\section{Hypertension variables}{
These variables are derived according to the 2017 American College of
Cardiology/American Heart Association (ACC/AHA) BP guideline and the
Seventh Joint National Committee (JNC7) BP guideline.
\subsection{htn_jnc7}{
\itemize{
\item \strong{Label}: Hypertension defined by the JNC7 guideline
\item \strong{Description}: Hypertension defined by the JNC7 guideline, systolic
blood pressure >= 140 mm Hg, diastolic blood pressure >= 90 mm Hg or
self-reported antihypertensive medication use.
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 36,640 (65.4\%)
\item \emph{Yes}: 19,377 (34.6\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{htn_accaha}{
\itemize{
\item \strong{Label}: Hypertension defined by the 2017 ACC/AHA BP guideline
\item \strong{Description}: Hypertension defined by the 2017 ACC/AHA blood
pressure guideline, systolic blood pressure >= 130 mm Hg, diastolic
blood pressure >= 80 mm Hg or self-reported antihypertensive
medication use.
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 29,061 (51.9\%)
\item \emph{Yes}: 26,956 (48.1\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{htn_aware}{
\itemize{
\item \strong{Label}: Awareness of hypertension
\item \strong{Description}: Self-report of a prior diagnosis of antihypertensive
medication.
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 37,597 (67.1\%)
\item \emph{Yes}: 18,420 (32.9\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{htn_resistant_jnc7}{
\itemize{
\item \strong{Label}: Resistant hypertension defined by the JNC7 guideline
\item \strong{Description}: Taking 4 or more classes of antihypertensive
medication, systolic blood pressure >= 140 mm Hg or diastolic blood
pressure >= 90 mm Hg with the use of 3 classes of antihypertensive
medication, or systolic blood pressure >= 130 mm Hg or diastolic
blood pressure >= 80 mm Hg with the use of 3 classes of
antihypertensive medication for those with diabetes or chronic kidney
disease.
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 53,628 (95.7\%)
\item \emph{Yes}: 2,389 (4.26\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{htn_resistant_accaha}{
\itemize{
\item \strong{Label}: Resistant hypertension defined by the 2017 ACC/AHA BP
guideline
\item \strong{Description}: Taking 4 or more classes of antihypertensive
medication; systolic blood pressure = 130 mm Hg or diastolic blood
pressure = 80 mm Hg with the use of 3 classes of antihypertensive
medication for those < 65 years of age and those = 65 years of age
with diabetes, chronic kidney disease, history of cardiovascular
disease or 10-year predicted ASCVD risk = 10\%; Systolic blood pressure
= 130 mm Hg with the use of 3 classes of antihypertensive medication
for those = 65 years of age without diabetes, chronic kidney disease,
history of cardiovascular disease or 10-year predicted ASCVD risk =
10\%.
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 53,392 (95.3\%)
\item \emph{Yes}: 2,625 (4.69\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{htn_resistant_accaha_thz}{
\itemize{
\item \strong{Label}: Resistant hypertension defined by the JNC7 guideline,
requires thiazide diuretic
\item \strong{Description}: Taking 4 or more classes of antihypertensive
medication; systolic blood pressure = 130 mm Hg or diastolic blood
pressure = 80 mm Hg with the use of 3 classes of antihypertensive
medication for those < 65 years of age and those = 65 years of age
with diabetes, chronic kidney disease, history of cardiovascular
disease or 10-year predicted ASCVD risk = 10\%; Systolic blood pressure
= 130 mm Hg with the use of 3 classes of antihypertensive medication
for those = 65 years of age without diabetes, chronic kidney disease,
history of cardiovascular disease or 10-year predicted ASCVD risk =
10\%. To meet this definition of resistant hypertension, the
participant had to be taking a thiazide diuretic.
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 54,487 (97.3\%)
\item \emph{Yes}: 1,530 (2.73\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{htn_resistant_jnc7_thz}{
\itemize{
\item \strong{Label}: Resistant hypertension defined by the 2017 ACC/AHA BP
guideline, requires thiazide diuretic
\item \strong{Description}: Taking 4 or more classes of antihypertensive
medication, systolic blood pressure >= 140 mm Hg or diastolic blood
pressure >= 90 mm Hg with the use of 3 classes of antihypertensive
medication, or systolic blood pressure >= 130 mm Hg or diastolic
blood pressure >= 80 mm Hg with the use of 3 classes of
antihypertensive medication for those with diabetes or chronic kidney
disease. To meet this definition of resistant hypertension, the
participant had to be taking a thiazide diuretic.
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 54,649 (97.6\%)
\item \emph{Yes}: 1,368 (2.44\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}
}

\section{Antihypertensive medication variables}{
During the interview, the labels of medications that participants
reported taking in the preceding 30 days were recorded.
\subsection{bp_med_use}{
\itemize{
\item \strong{Label}: Self-reported antihypertensive medication use
\item \strong{Description}: Self-reported use of antihypertensive medication
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 42,270 (75.5\%)
\item \emph{Yes}: 13,747 (24.5\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{bp_med_recommended_jnc7}{
\itemize{
\item \strong{Label}: Antihypertensive medications recommended defined by the
JNC7 guideline
\item \strong{Description}: Systolic blood pressure >= 140 mm Hg or diastolic
blood pressure >= 90 mm Hg; Systolic blood pressure >= 130 mm Hg or
diastolic blood pressure >= 80 mm Hg for those with chronic kidney
disease or diabetes. Those taking antihypertensive medications were
considered to be recommended treatment.
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 35,265 (63.0\%)
\item \emph{Yes}: 20,752 (37.0\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{bp_med_recommended_accaha}{
\itemize{
\item \strong{Label}: Antihypertensive medications recommended by the 2017
ACC/AHA BP guideline
\item \strong{Description}: Systolic blood pressure = 130 mm Hg or diastolic
blood pressure = 80 mm Hg; Systolic blood pressure = 130 mm Hg for
those age = 65 years without diabetes, chronic kidney disease, history
of cardiovascular disease, or 10-year predicted atherosclerotic
cardiovascular disease risk = 10\% by the pooled cohort risk equations.
Those taking antihypertensive medications were considered to be
recommended treatment.
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 34,003 (60.7\%)
\item \emph{Yes}: 22,014 (39.3\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{bp_med_n_class}{
\itemize{
\item \strong{Label}: Number of antihypertensive medication classes
\item \strong{Description}: Number of antihypertensive medication classes being
taken based on the pill bottle review
\item \strong{Number of observed values}: 55,649 (99.3\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{None}: 39,556 (71.1\%)
\item \emph{One}: 6,880 (12.4\%)
\item \emph{Two}: 5,340 (9.60\%)
\item \emph{Three}: 2,712 (4.87\%)
\item \emph{Four or more}: 1,161 (2.09\%)
}
\item \strong{Number of missing values}: 368 (0.66\%)
}
}

\subsection{bp_med_ace}{
\itemize{
\item \strong{Label}: ACE inhibitors
\item \strong{Description}: Taking an angiotensin converting enzyme inhibitor,
defined using the pill bottle review. Drugs in this class included
benazepril, captopril, enalapril, fosinopril, lisinopril, moexipril,
perindopril, quinapril, ramipril, trandolapril
\item \strong{Number of observed values}: 55,649 (99.3\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 49,016 (88.1\%)
\item \emph{Yes}: 6,633 (11.9\%)
}
\item \strong{Number of missing values}: 368 (0.66\%)
}
}

\subsection{bp_med_aldo}{
\itemize{
\item \strong{Label}: Aldosterone antagonists
\item \strong{Description}: Taking an aldosterone antagonist, defined using the
pill bottle review. Drugs in this class included eplerenone,
spironolactone.
\item \strong{Number of observed values}: 55,649 (99.3\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 55,235 (99.3\%)
\item \emph{Yes}: 414 (0.74\%)
}
\item \strong{Number of missing values}: 368 (0.66\%)
}
}

\subsection{bp_med_alpha}{
\itemize{
\item \strong{Label}: Alpha-1 blockers
\item \strong{Description}: Taking an alpha blocker, defined using the pill
bottle review. Drugs in this class included doxazosin, prazosin,
terazosin.
\item \strong{Number of observed values}: 55,649 (99.3\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 54,880 (98.6\%)
\item \emph{Yes}: 769 (1.38\%)
}
\item \strong{Number of missing values}: 368 (0.66\%)
}
}

\subsection{bp_med_angioten}{
\itemize{
\item \strong{Label}: Angiotensin receptor blockers
\item \strong{Description}: Taking an angiotensin receptor blocker, defined using
the pill bottle review. Drugs in this class included candesartan,
eprosartan, irbesartan, losartan, olmesartan, telmisartan, valsartan,
azilsartan.
\item \strong{Number of observed values}: 55,649 (99.3\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 52,132 (93.7\%)
\item \emph{Yes}: 3,517 (6.32\%)
}
\item \strong{Number of missing values}: 368 (0.66\%)
}
}

\subsection{bp_med_beta}{
\itemize{
\item \strong{Label}: Beta blockers
\item \strong{Description}: Taking a beta blocker. Drugs in this class included
acebutolol, atenolol, betaxolol, bisoprolol, carvedilol, labetalol,
metoprolol, nadolol, nebivolol, pindolol, propranolol.
\item \strong{Number of observed values}: 55,649 (99.3\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 49,610 (89.1\%)
\item \emph{Yes}: 6,039 (10.9\%)
}
\item \strong{Number of missing values}: 368 (0.66\%)
}
}

\subsection{bp_med_central}{
\itemize{
\item \strong{Label}: Central alpha1 agonist and other centrally acting agents
\item \strong{Description}: Taking a centrally acting agents, defined using the
pill bottle review. Drugs in this class included clonidine, guanabenz,
guanfacine, methyldopa, reserpine.
\item \strong{Number of observed values}: 55,649 (99.3\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 55,185 (99.2\%)
\item \emph{Yes}: 464 (0.83\%)
}
\item \strong{Number of missing values}: 368 (0.66\%)
}
}

\subsection{bp_med_ccb}{
\itemize{
\item \strong{Label}: Calcium channel blockers
\item \strong{Description}: Taking a calcium channel blocker, defined using the
pill bottle review. Drugs in this class included amlodipine,
diltiazem, felodipine, isradipine, nicardipine, nifedipine,
nisoldipine, verapamil.
\item \strong{Number of observed values}: 55,649 (99.3\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 50,787 (91.3\%)
\item \emph{Yes}: 4,862 (8.74\%)
}
\item \strong{Number of missing values}: 368 (0.66\%)
}
}

\subsection{bp_med_diur_Ksparing}{
\itemize{
\item \strong{Label}: Potassium sparing diuretics
\item \strong{Description}: Taking a potassium-sparing diuretic, defined using
the pill bottle review. Drugs in this class included amiloride,
triamterene.
\item \strong{Number of observed values}: 55,649 (99.3\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 54,853 (98.6\%)
\item \emph{Yes}: 796 (1.43\%)
}
\item \strong{Number of missing values}: 368 (0.66\%)
}
}

\subsection{bp_med_diur_loop}{
\itemize{
\item \strong{Label}: Loop diuretics
\item \strong{Description}: Taking a loop diuretic, defined using the pill bottle
review. Drugs in this class included bumetanide, furosemide,
torsemide, ethacrynic acid.
\item \strong{Number of observed values}: 55,649 (99.3\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 53,806 (96.7\%)
\item \emph{Yes}: 1,843 (3.31\%)
}
\item \strong{Number of missing values}: 368 (0.66\%)
}
}

\subsection{bp_med_diur_thz}{
\itemize{
\item \strong{Label}: Thiazide or thiazide-type diuretics
\item \strong{Description}: Taking a thiazide diuretic, defined using the pill
bottle review. Drugs in this class included bendroflumethiazide,
chlorthalidone, chlorothiazide, hydrochlorothiazide, indapamide,
metolazone, polythiazide.
\item \strong{Number of observed values}: 55,649 (99.3\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 50,646 (91.0\%)
\item \emph{Yes}: 5,003 (8.99\%)
}
\item \strong{Number of missing values}: 368 (0.66\%)
}
}

\subsection{bp_med_renin_inhibitors}{
\itemize{
\item \strong{Label}: Direct renin inhibitors
\item \strong{Description}: Taking a renin inhibitor, defined using the pill
bottle review. Drugs in this class included aliskiren.
\item \strong{Number of observed values}: 55,649 (99.3\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 55,626 (100\%)
\item \emph{Yes}: 23 (0.04\%)
}
\item \strong{Number of missing values}: 368 (0.66\%)
}
}

\subsection{bp_med_vasod}{
\itemize{
\item \strong{Label}: Direct vasodilators
\item \strong{Description}: Taking a vasodilator, defined using the pill bottle
review. Drugs in this class included hydralazine, minoxidil.
\item \strong{Number of observed values}: 55,649 (99.3\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 55,380 (99.5\%)
\item \emph{Yes}: 269 (0.48\%)
}
\item \strong{Number of missing values}: 368 (0.66\%)
}
}
}

\section{Comorbidities variables}{
These variables describe comorbid conditions.
\subsection{cc_n_highrisk}{
\itemize{
\item \strong{Label}: Number of high risk conditions
\item \strong{Description}: Self-reported history of coronary heart disease,
myocardial infarction, stroke or heart failure or 10-year predicted
risk >= 10\% estimated by the pooled cohort risk equations
\item \strong{Number of observed values}: 22,506 (40.2\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{0}: 7,300 (32.4\%)
\item \emph{1}: 6,974 (31.0\%)
\item \emph{2}: 4,680 (20.8\%)
\item \emph{3 or more}: 3,552 (15.8\%)
}
\item \strong{Number of missing values}: 33,511 (59.8\%)
}
}

\subsection{cc_smoke}{
\itemize{
\item \strong{Label}: Smoking status
\item \strong{Description}: Self-reported current cigarette smoking
\item \strong{Number of observed values}: 53,077 (94.8\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{Never}: 29,261 (55.1\%)
\item \emph{Former}: 12,912 (24.3\%)
\item \emph{Current}: 10,904 (20.5\%)
}
\item \strong{Number of missing values}: 2,940 (5.25\%)
}
}

\subsection{cc_bmi}{
\itemize{
\item \strong{Label}: Body mass index, kg/m2
\item \strong{Description}: Body mass index in kg/m2, estimated using the height
and weight measured during the study examination.
\item \strong{Number of observed values}: 54,862 (97.9\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{<25}: 17,284 (31.5\%)
\item \emph{25 to <30}: 18,005 (32.8\%)
\item \emph{30 to <35}: 10,916 (19.9\%)
\item \emph{35+}: 8,657 (15.8\%)
}
\item \strong{Number of missing values}: 1,155 (2.06\%)
}
}

\subsection{cc_diabetes}{
\itemize{
\item \strong{Label}: Prevalent diabetes
\item \strong{Description}: HbA1c >= 6.5\% or self-report of a prior diagnosis of
diabetes with self-reported use of insulin or oral glucose-lowering
medications.
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 48,778 (87.1\%)
\item \emph{Yes}: 7,239 (12.9\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{cc_ckd}{
\itemize{
\item \strong{Label}: Prevalent chronic kidney disease
\item \strong{Description}: Estimated glomerular filtration rate < 60
ml/min/1.73 m2 or albumin-to-creatinine > 30 mg/g. Estimated
glomerular filtration rate was calculated using the 2021 serum
creatinine-based equation.
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 46,773 (83.5\%)
\item \emph{Yes}: 9,244 (16.5\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{cc_cvd_mi}{
\itemize{
\item \strong{Label}: History of myocardial infarction
\item \strong{Description}: Self-reported history of myocardial infarction
\item \strong{Number of observed values}: 52,087 (93.0\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 49,829 (95.7\%)
\item \emph{Yes}: 2,258 (4.34\%)
}
\item \strong{Number of missing values}: 3,930 (7.02\%)
}
}

\subsection{cc_cvd_chd}{
\itemize{
\item \strong{Label}: History of coronary heart disease
\item \strong{Description}: Self-reported history of myocardial infarction or
coronary heart disease
\item \strong{Number of observed values}: 52,084 (93.0\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 48,771 (93.6\%)
\item \emph{Yes}: 3,313 (6.36\%)
}
\item \strong{Number of missing values}: 3,933 (7.02\%)
}
}

\subsection{cc_cvd_stroke}{
\itemize{
\item \strong{Label}: History of stroke
\item \strong{Description}: Self-reported history of stroke
\item \strong{Number of observed values}: 52,099 (93.0\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 50,081 (96.1\%)
\item \emph{Yes}: 2,018 (3.87\%)
}
\item \strong{Number of missing values}: 3,918 (6.99\%)
}
}

\subsection{cc_cvd_ascvd}{
\itemize{
\item \strong{Label}: History of ASCVD
\item \strong{Description}: Self-reported history of coronary heart disease,
myocardial infarction or stroke
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 51,268 (91.5\%)
\item \emph{Yes}: 4,749 (8.48\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}

\subsection{cc_cvd_hf}{
\itemize{
\item \strong{Label}: History of heart failure
\item \strong{Description}: Self-reported history of heart failure
\item \strong{Number of observed values}: 52,013 (92.9\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 50,301 (96.7\%)
\item \emph{Yes}: 1,712 (3.29\%)
}
\item \strong{Number of missing values}: 4,004 (7.15\%)
}
}

\subsection{cc_cvd_any}{
\itemize{
\item \strong{Label}: History of CVD
\item \strong{Description}: Self-reported history of coronary heart disease,
myocardial infarction, stroke or heart failure
\item \strong{Number of observed values}: 56,017 (100\%)
\item \strong{Counts of observed values}
\itemize{
\item \emph{No}: 50,646 (90.4\%)
\item \emph{Yes}: 5,371 (9.59\%)
}
\item \strong{Number of missing values}: 0 (0.00\%)
}
}
}

\keyword{datasets}
