select * from t_province order by province_code ;
select * from t_province_detail order by id asc;

select count(*) from t_province;
select count(*) from t_province_detail;

select count(distinct city) from t_province_detail;
select count(distinct sub_district) from t_province_detail;
select count(distinct urban) from t_province_detail;

select distinct(city) from t_province_detail order by city asc;
select distinct(sub_district) from t_province_detail order by sub_district asc;
select distinct(urban) from t_province_detail order by urban asc;

select prov.province_code, dtl.id, dtl.city
from t_province_detail dtl
	join t_province prov on dtl.province_code = prov.province_code 
where prov.province_name = 'JAWA BARAT'
order by prov.province_code asc;

select sub_district from t_province_detail where city = 'BANDUNG' order by id asc;
select urban from t_province_detail where sub_district = 'KIARACONDONG' order by id asc;

select prov.province_code, prov.province_name, prov.province_name_en,
	dtl.city, dtl.sub_district, dtl.urban, dtl.postal_code
from t_province_detail dtl
  join t_province prov on dtl.province_code = prov.province_code 
where dtl.postal_code = '40283';
