SELECT
  COUNT(*) AS total
FROM store_sales ss
JOIN time_dim td
  ON (ss.ss_sold_time_sk = td.t_time_sk)
JOIN household_demographics hd
  ON (ss.ss_hdemo_sk = hd.hd_demo_sk)
JOIN store s
  ON (ss.ss_store_sk = s.s_store_sk)
WHERE
  td.t_hour = 8
  AND td.t_minute >= 30
  AND hd.hd_dep_count = 5
  AND s.s_store_name = 'ese';
