1.  SELECT invoice_line_id, unit_price
    FROM invoice_line
    WHERE unit_price IN(
    SELECT unit_price
    FROM invoice_line 
    WHERE unit_price > 0.99);
2.  SELECT name FROM track WHERE track_id IN(
	SELECT track_id FROM playlist_track WHERE playlist_id IN(
    SELECT playlist_id FROM playlist WHERE name = 'Music');