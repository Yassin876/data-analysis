--create new data base
create database students
use students

--data
select *
from student_habits_performance


--columns efacts on exam score
SELECT
    study_hours_per_day,
    social_media_hours,
    netflix_hours,
    attendance_percentage,
    sleep_hours,
    exercise_frequency,
    mental_health_rating,
    exam_score
FROM student_habits_performance

--relation between study_hours_per_day and exam_score
select convert(int,study_hours_per_day)as study_hours_per_day,
    ROUND(avg(exam_score),2)as avg_exam_score
from student_habits_performance
group by  convert(int,study_hours_per_day)
order by study_hours_per_day

--efact internet qalte on exam_score
select internet_quality,
    ROUND(avg(exam_score),2)as avg_exam_score
from student_habits_performance
group by internet_quality
order by avg_exam_score desc

--efact part_time_job on exam_score
select part_time_job,
    ROUND(avg(exam_score),2)as avg_exam_score
from student_habits_performance
group by part_time_job
order by avg_exam_score desc

--diffrant between male and fmale on avg_exam_score
select gender,
    ROUND(avg(exam_score),2)as avg_exam_score
from student_habits_performance
group by gender

--efact diet_quality on exam_score
select diet_quality,
    ROUND(avg(exam_score),2)as avg_exam_score
from student_habits_performance
group by diet_quality
order by avg_exam_score desc

--efact sleep hours on avg_exam_score
select convert(int,sleep_hours)as sleep_hours,
    ROUND(avg(exam_score),2)as avg_exam_score
from student_habits_performance
group by  convert(int,sleep_hours)
order by sleep_hours

--efact mental_health_rating on avg_exam_score
select mental_health_rating,
    ROUND(avg(exam_score),2)as avg_exam_score
from student_habits_performance
group by mental_health_rating 
order by mental_health_rating desc

--efact extracurricular_participation on avg_exam_score
select extracurricular_participation,
    ROUND(avg(exam_score),2)as avg_exam_score
from student_habits_performance
group by extracurricular_participation 

---efact parental_education_level on avg_exam_score
select parental_education_level,
    ROUND(avg(exam_score),2)as avg_exam_score
from student_habits_performance
group by parental_education_level 
order by avg_exam_score desc
