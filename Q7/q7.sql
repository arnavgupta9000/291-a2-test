select book_id, title, pyear from(select b.book_id, b.title, b.pyear, rank() over (order by count(*) desc) as book_rank from borrowings bor join books b on bor.book_id = b.book_id group by b.book_id, b.title, b.pyear) as rank where book_rank <= 3;
