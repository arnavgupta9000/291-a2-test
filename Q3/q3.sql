select distinct bid, email from members m, borrowings b, books bo left join waitlists w on b.book_id = w.book_id where b.end_date is not null and m.email = b.member and bo.book_id = b.book_id and julianday(b.end_date) - julianday(b.start_date) > 14 and (w.priority < 5 or w.priority is null);
