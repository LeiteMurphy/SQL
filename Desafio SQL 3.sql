/*
Show the total amount of male patients and the total amount of female patients in the patients table.
Display the two results in the same row.
*/

select (
    SELECT count(gender = 'M')
    FROM patients
    where gender = 'M'
  ) as male_count, (
    SELECT count(gender = 'F')
    FROM patients
    where gender = 'F'
  ) AS female_count