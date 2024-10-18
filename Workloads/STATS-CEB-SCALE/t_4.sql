SELECT COUNT(*)
 FROM comments c,
votes v
WHERE c.Score=0

AND c.UserId = v.UserId;