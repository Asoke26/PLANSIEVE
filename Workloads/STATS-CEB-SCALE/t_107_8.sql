SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 10
AND c.CreationDate >= 1244
AND u.CreationDate >= 642

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;