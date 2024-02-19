select distinct b1.bid, m.email, b1.end_date  from borrowings b1 join members m on b1.member = m.email join books bo on b1.book_id = bo.book_id join borrowings b2 on b1.book_id = b2.book_id join members m2 on b2.member = m2.email where (lower(bo.author) like '%john%' or lower(bo.author) like '%marry%') and m2.faculty = 'CS'; 
