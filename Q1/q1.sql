select distinct name, email from members m, borrowings b, waitlists w where m.email = b.member and w.member = m.email and w.book_id = b.book_id;
