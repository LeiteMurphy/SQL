/*
Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'.

Primary diagnosis is stored in the admissions table.
*/

SELECT
  a.patient_id,
  first_name,
  last_name
FROM patients p
  INNER JOIN admissions a ON a.patient_id = p.patient_id
where diagnosis = 'Dementia';