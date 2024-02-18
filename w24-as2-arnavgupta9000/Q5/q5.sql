select distinct bo.book_id, title, avg(rating) as aver from reviews r, books bo where r.book_id = bo.book_id group by bo.book_id, title having count(*) >=2 order by aver desc limit 3;
