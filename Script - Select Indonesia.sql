select * from t_province;

--t_post
select * from t_province_detail order by id asc;

select distinct(city) from t_province_detail order by city asc;
select distinct(city) from t_province_detail tpc 
	join t_province tp on tp.province_code = tpc.province_code 
where upper(tp.province_name) = upper('jawa barat') order by city asc;

select distinct(sub_district) from t_province_detail order by sub_district asc;
select distinct(sub_district) from t_province_detail where upper(city) = upper('bandung') order by sub_district asc;

select distinct(urban) from t_province_detail order by urban asc;
select distinct(urban) from t_province_detail where upper(sub_district) = upper('kiaracondong') order by urban asc;

select * from t_province_detail a 
  join t_province b on a.province_code = b.province_code 
where a.postal_code = '40283';
