SELECT COUNT(*)
 FROM comments c,
badges b
WHERE c.Score=0
AND b.Date<=1542

AND c.UserId = b.UserId;