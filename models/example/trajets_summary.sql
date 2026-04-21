SELECT
  sc.nom_segment,
  tv.nom_type_vehicule,
  COUNT(t.id_trajet) AS nombre_trajets,
  ROUND(SUM(t.montant_total),2) AS total_revenus
FROM `dbttbd.VTC_Paris.trajets` t
JOIN `dbttbd.VTC_Paris.clients` c ON t.id_client = c.id_client
JOIN `dbttbd.VTC_Paris.segments_clients` sc ON c.id_segment = sc.id_segment
JOIN `dbttbd.VTC_Paris.vehicules` v ON t.id_vehicule = v.id_vehicule
JOIN `dbttbd.VTC_Paris.types_vehicules` tv ON v.id_type_vehicule = tv.id_type_vehicule
GROUP BY sc.nom_segment, tv.nom_type_vehicule
ORDER BY total_revenus DESC;
