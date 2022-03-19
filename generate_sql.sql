-- generate for any test
with a as
(
	select 
		'"' || book_ref || '"' book_ref1
	from
		bookings.bookings
	limit 100
)
select
	string_agg(book_ref1, ',')
from
	a
;

-- generate for unnest test

with a as
(
	select 
		'''' || book_ref || '''' book_ref1
	from
		bookings.bookings
	limit 100
)
select
	string_agg(book_ref1, ',')
from
	a
;