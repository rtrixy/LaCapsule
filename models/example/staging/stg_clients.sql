SELECT
id_client,
nom_client,
prenom_client,
email_client,
id_segment
FROM `dbttbd.VTC_Paris.clients`
WHERE email_client IS NOT NULL