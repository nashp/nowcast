
-- select t1.indicator_id, t1.value,  t1.period_date, t1.frequency_id, t1.release_date, t1.next_release, t1.vintage from data t1 left join data t2 on t1.period_date = t2.period_date and t1.vintage < t2.vintage order by period_date;
-- select t1.vintage from data t1 left join data t2 on t1.period_date = t2.period_date and t1.vintage < t2.vintage

-- update data set latest = True where indicator_id = %s, period_date = %s, release_date = %s, vintage = %s
-- select * from data where release_date = '2016-09-01';
-- select * from data order by period_date desc;
-- select * from data where release_date > str_to_date('2016-09-01', '%Y-%m-%d')
-- select * from economic_database.data;

-- update data set vintage = vintage + 1 where period_date = '2015-01-01' and release_date > '2016-09-01';

-- select min(vintage) from a;
-- select 4, 6, (select min(vintage) from data where period_date = date'2015-01-10' and release_date > '2016-09-01');
-- select * from data;
-- elect  4, 3001,'2016-03-01', 4, '2016-04-01', '2016-05-01', True, (select (select(min(vintage) from data where period_date = '2015-01-10' and release_date > '2016-09-01')(select 1 from data ));

 /*INSERT INTO data(indicator_id, value, period_date, frequency_id, release_date, next_release, latest, vintage) 
			select  4, 3001,'2016-03-01', 4, '2016-04-01', '2016-05-01', True,(select min(vintage) from data where period_date = '2015-01-10' and release_date > '2016-09-01')
           ON duplicate key update indicator_id = indicator_id, period_date = period_date, release_date = release_date, latest = True, value = value, vintage = vintage;
*/
-- select period_date,release_date from data where release_date = '2016-09-01';

-- select max(t1.vintage) from data t1 left join data t2 on  t1.period_date = t2.period_date;

-- create database ms_econ_Db_UAT;
-- select t1.indicator_id, t1.period_date, t1.release_date, t1.vintage  from data t1 left join data t2 on t1.period_date = t2.period_date and t1.release_date = t2.release_date and t2.vintage < t1.vintage

select distinct vendor_key, next_release, indicator_info from data_series_v t1 where latest = true and next_release = (select min(t2.next_release) from data_series_v t2 where t1.vendor_key = t2.vendor_key) order by next_release asc;
/*select * from data_series_v where frequency = 'q';
select * from indicator_types order by indicator_type_id;
select * from presentation_units order by unit_id;

SELECT t4.iso_alpha_2, t2.vendor_key, t2.indicator_info, t1.value, t1.period_date, t1.release_date, t1.next_release, t1.latest, t1.vintage, t3.frequency, t5.indicator_origin, t6.presentation_unit FROM data t1 LEFT JOIN (indicators t2) ON  (t1.indicator_id = t2.indicator_id) LEFT JOIN (release_frequencies t3) ON(t2.frequency_id = t3.frequency_id) LEFT JOIN (indicator_types t5) ON (t2.indicator_type = t5.indicator_type_id) LEFT JOIN (presentation_units t6) ON (t2.indicator_presentation = t6.unit_id) LEFT JOIN (master_country t4) USING(country_id);


*/
select * from latest_results_v;

SELECT t2.vendor_key, t2.indicator_short_info, t2.indicator_info, t1.value, t1.period_date, t1.release_date, t1.next_release, t1.latest, t1.vintage, t3.frequency, t5.indicator_origin, t6.presentation_unit FROM data t1 LEFT JOIN (indicators t2) ON  (t1.indicator_id = t2.indicator_id) LEFT JOIN (release_frequencies t3) ON(t2.frequency_id = t3.frequency_id) ;

select * from data_series_v; #vendor_key = 'ussurv1044' order by period_date desc;


-- select * from data order by period_date;
-- select t1.indicator_id, t1.period_date, t1.release_date, t1.value, t1.vintage  from data t1 left join data t2 on t1.period_date = t2.period_date and t1.vintage < t2.vintage order by period_date;
-- select max(vintage) from data where indicator_id = 4 group by period_date
-- select indicator_id, period_date, max(vintage) from data where indicator_id = 4 group by period_date
-- select indicator_id, period_date, max(vintage) from data where indicator_id = 4 group by period_date;