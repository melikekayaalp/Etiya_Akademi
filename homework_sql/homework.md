SQL Homework
28.11.2022

>- **<h3>Soru 1</h3>-- 65.sokak ekle.**
```
insert into streets(name,district_id)
VALUES('65.sk',1)
Select * from streets
```
![insert](https://github.com/melikekayaalp/Etiya_Akademi/blob/main/homework_sql/homework_png/insert.PNG)

>- **<h3>Soru 2</h3>--65.sokağı 70.sokak olarak güncelle**
```
update streets 
set name ='70.sk'
where name ='65.sk'
```
![update](https://github.com/melikekayaalp/Etiya_Akademi/blob/main/homework_sql/homework_png/update.PNG)

>- **<h3>Soru 3</h3>--70.sokağı sil.**
```
DELETE from streets
where name = '70.sk'
```
![delete](https://github.com/melikekayaalp/Etiya_Akademi/blob/main/homework_sql/homework_png/delete.PNG)

>- **<h3>Soru 4</h3>--ismi deneme olan kullanıcıları listele.**
```
Select * from users
where lower(name) IN('deneme')
```
![ın](https://github.com/melikekayaalp/Etiya_Akademi/blob/main/homework_sql/homework_png/IN.PNG)

>- **<h3>Soru 5</h3>--5 ile 25 arasında stoğu bulunan ürünleri listele.**
```
Select * from products
where stock between 5 and 25
```
![between](https://github.com/melikekayaalp/Etiya_Akademi/blob/main/homework_sql/homework_png/between.PNG)

>- **<h3>Soru 6</h3>--Kategorilerde kaç ürün bulunduğunu listele..**
```
select ca.name, count(pr.id) as adet from products pr 
inner join product_categories pc
on pr.id = pc.product_id
inner join categories ca 
on ca.id=pc.category_id 
group by ca.name order by adet 
```
![ınner](https://github.com/melikekayaalp/Etiya_Akademi/blob/main/homework_sql/homework_png/inner%20join.PNG)

>- **<h3>Soru 7</h3>--Adresi olmayan kullanıcıları listele**
```
select * from users usr left join addresses adr
on usr.id=adr.user_id 
where adr.street_id is null
```
![left](https://github.com/melikekayaalp/Etiya_Akademi/blob/main/homework_sql/homework_png/left%20join.PNG)

>- **<h3>Soru 8</h3>--Mail adresi veya adresi bulunmayan kullanıcıları listele**
```
select * from addresses ad full outer join users us
on ad.user_id = us.id
where street_id is null or email is null
```
![full](https://github.com/melikekayaalp/Etiya_Akademi/blob/main/homework_sql/homework_png/full%20outer%20join.PNG)


