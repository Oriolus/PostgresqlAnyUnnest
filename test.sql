explain analyze
select 
	*
from
	bookings.bookings
where
	book_ref = ANY('{"00000F","000012","00002D","000068","0000C9","000104","000112","00015C","00015D","000181","000186","0001CE","000204","00021E","000277","0002CD","0002D8","0002DB","0002E0","0002E6","0002F3","00030F","000335","00033C","00034E","000352","000368","000374","000391","0003C9","00040C","00044D","00044E","00049A","0004AE","0004B0","0004E1","0004E7","0004F0","000511","000532","00053F","000549","00054E","000580","0005B6","0005D1","0005E7","0005F4","0005FF","000621","00065F","00067B","0006C3","0006F5","000717","00072A","000735","000744","000769","000784","000787","0007A9","0007C6","0007ED","0007FC","000813","000815","000836","000842","000859","000862","0008AC","0008CD","0008DF","0008F4","0008FA","0008FD","000909","000917","00094B","00098C","00098F","000999","0009C9","0009D5","0009ED","000A1E","000A1F","000A39","000AA7","000AB3","000ABB","000ADA","000AE2","000B18","000B77","000B79","000B91","000B97"}')

"Index Scan using bookings_pkey on bookings  (cost=0.42..440.25 rows=100 width=21) (actual time=0.075..0.611 rows=100 loops=1)"
"  Index Cond: (book_ref = ANY ('{00000F,000012,00002D,000068,0000C9,000104,000112,00015C,00015D,000181,000186,0001CE,000204,00021E,000277,0002CD,0002D8,0002DB,0002E0,0002E6,0002F3,00030F,000335,00033C,00034E,000352,000368,000374,000391,0003C9,00040C,00044D,00044E,00049A,0004AE,0004B0,0004E1,0004E7,0004F0,000511,000532,00053F,000549,00054E,000580,0005B6,0005D1,0005E7,0005F4,0005FF,000621,00065F,00067B,0006C3,0006F5,000717,00072A,000735,000744,000769,000784,000787,0007A9,0007C6,0007ED,0007FC,000813,000815,000836,000842,000859,000862,0008AC,0008CD,0008DF,0008F4,0008FA,0008FD,000909,000917,00094B,00098C,00098F,000999,0009C9,0009D5,0009ED,000A1E,000A1F,000A39,000AA7,000AB3,000ABB,000ADA,000AE2,000B18,000B77,000B79,000B91,000B97}'::bpchar[]))"
"Planning Time: 0.099 ms"
"Execution Time: 0.626 ms"

-- =============================================================================================


explain analyze
select
	book.*
from
	bookings.bookings book
	
	inner join UNNEST(ARRAY[
		ROW('00000F', null, null)::bookings.bookings_v1,
		ROW('000012', null, null)::bookings.bookings_v1,
		ROW('00002D', null, null)::bookings.bookings_v1,
		ROW('000068', null, null)::bookings.bookings_v1,
		ROW('0000C9', null, null)::bookings.bookings_v1,
		ROW('000104', null, null)::bookings.bookings_v1,
		ROW('000112', null, null)::bookings.bookings_v1,
		ROW('00015C', null, null)::bookings.bookings_v1,
		ROW('00015D', null, null)::bookings.bookings_v1,
		ROW('000181', null, null)::bookings.bookings_v1,
		ROW('000186', null, null)::bookings.bookings_v1,
		ROW('0001CE', null, null)::bookings.bookings_v1,
		ROW('000204', null, null)::bookings.bookings_v1,
		ROW('00021E', null, null)::bookings.bookings_v1,
		ROW('000277', null, null)::bookings.bookings_v1,
		ROW('0002CD', null, null)::bookings.bookings_v1,
		ROW('0002D8', null, null)::bookings.bookings_v1,
		ROW('0002DB', null, null)::bookings.bookings_v1,
		ROW('0002E0', null, null)::bookings.bookings_v1,
		ROW('0002E6', null, null)::bookings.bookings_v1,
		ROW('0002F3', null, null)::bookings.bookings_v1,
		ROW('00030F', null, null)::bookings.bookings_v1,
		ROW('000335', null, null)::bookings.bookings_v1,
		ROW('00033C', null, null)::bookings.bookings_v1,
		ROW('00034E', null, null)::bookings.bookings_v1,
		ROW('000352', null, null)::bookings.bookings_v1,
		ROW('000368', null, null)::bookings.bookings_v1,
		ROW('000374', null, null)::bookings.bookings_v1,
		ROW('000391', null, null)::bookings.bookings_v1,
		ROW('0003C9', null, null)::bookings.bookings_v1,
		ROW('00040C', null, null)::bookings.bookings_v1,
		ROW('00044D', null, null)::bookings.bookings_v1,
		ROW('00044E', null, null)::bookings.bookings_v1,
		ROW('00049A', null, null)::bookings.bookings_v1,
		ROW('0004AE', null, null)::bookings.bookings_v1,
		ROW('0004B0', null, null)::bookings.bookings_v1,
		ROW('0004E1', null, null)::bookings.bookings_v1,
		ROW('0004E7', null, null)::bookings.bookings_v1,
		ROW('0004F0', null, null)::bookings.bookings_v1,
		ROW('000511', null, null)::bookings.bookings_v1,
		ROW('000532', null, null)::bookings.bookings_v1,
		ROW('00053F', null, null)::bookings.bookings_v1,
		ROW('000549', null, null)::bookings.bookings_v1,
		ROW('00054E', null, null)::bookings.bookings_v1,
		ROW('000580', null, null)::bookings.bookings_v1,
		ROW('0005B6', null, null)::bookings.bookings_v1,
		ROW('0005D1', null, null)::bookings.bookings_v1,
		ROW('0005E7', null, null)::bookings.bookings_v1,
		ROW('0005F4', null, null)::bookings.bookings_v1,
		ROW('0005FF', null, null)::bookings.bookings_v1,
		ROW('000621', null, null)::bookings.bookings_v1,
		ROW('00065F', null, null)::bookings.bookings_v1,
		ROW('00067B', null, null)::bookings.bookings_v1,
		ROW('0006C3', null, null)::bookings.bookings_v1,
		ROW('0006F5', null, null)::bookings.bookings_v1,
		ROW('000717', null, null)::bookings.bookings_v1,
		ROW('00072A', null, null)::bookings.bookings_v1,
		ROW('000735', null, null)::bookings.bookings_v1,
		ROW('000744', null, null)::bookings.bookings_v1,
		ROW('000769', null, null)::bookings.bookings_v1,
		ROW('000784', null, null)::bookings.bookings_v1,
		ROW('000787', null, null)::bookings.bookings_v1,
		ROW('0007A9', null, null)::bookings.bookings_v1,
		ROW('0007C6', null, null)::bookings.bookings_v1,
		ROW('0007ED', null, null)::bookings.bookings_v1,
		ROW('0007FC', null, null)::bookings.bookings_v1,
		ROW('000813', null, null)::bookings.bookings_v1,
		ROW('000815', null, null)::bookings.bookings_v1,
		ROW('000836', null, null)::bookings.bookings_v1,
		ROW('000842', null, null)::bookings.bookings_v1,
		ROW('000859', null, null)::bookings.bookings_v1,
		ROW('000862', null, null)::bookings.bookings_v1,
		ROW('0008AC', null, null)::bookings.bookings_v1,
		ROW('0008CD', null, null)::bookings.bookings_v1,
		ROW('0008DF', null, null)::bookings.bookings_v1,
		ROW('0008F4', null, null)::bookings.bookings_v1,
		ROW('0008FA', null, null)::bookings.bookings_v1,
		ROW('0008FD', null, null)::bookings.bookings_v1,
		ROW('000909', null, null)::bookings.bookings_v1,
		ROW('000917', null, null)::bookings.bookings_v1,
		ROW('00094B', null, null)::bookings.bookings_v1,
		ROW('00098C', null, null)::bookings.bookings_v1,
		ROW('00098F', null, null)::bookings.bookings_v1,
		ROW('000999', null, null)::bookings.bookings_v1,
		ROW('0009C9', null, null)::bookings.bookings_v1,
		ROW('0009D5', null, null)::bookings.bookings_v1,
		ROW('0009ED', null, null)::bookings.bookings_v1,
		ROW('000A1E', null, null)::bookings.bookings_v1,
		ROW('000A1F', null, null)::bookings.bookings_v1,
		ROW('000A39', null, null)::bookings.bookings_v1,
		ROW('000AA7', null, null)::bookings.bookings_v1,
		ROW('000AB3', null, null)::bookings.bookings_v1,
		ROW('000ABB', null, null)::bookings.bookings_v1,
		ROW('000ADA', null, null)::bookings.bookings_v1,
		ROW('000AE2', null, null)::bookings.bookings_v1,
		ROW('000B18', null, null)::bookings.bookings_v1,
		ROW('000B77', null, null)::bookings.bookings_v1,
		ROW('000B79', null, null)::bookings.bookings_v1,
		ROW('000B91', null, null)::bookings.bookings_v1,
		ROW('000B97', null, null)::bookings.bookings_v1
	]) srch on
		srch.book_ref = book.book_ref
;

"Nested Loop  (cost=0.43..833.25 rows=100 width=21) (actual time=0.038..0.621 rows=100 loops=1)"
"  ->  Function Scan on unnest srch  (cost=0.00..1.00 rows=100 width=28) (actual time=0.010..0.015 rows=100 loops=1)"
"  ->  Index Scan using bookings_pkey on bookings book  (cost=0.42..8.32 rows=1 width=21) (actual time=0.006..0.006 rows=1 loops=100)"
"        Index Cond: (book_ref = srch.book_ref)"
"Planning Time: 0.332 ms"
"Execution Time: 0.637 ms"