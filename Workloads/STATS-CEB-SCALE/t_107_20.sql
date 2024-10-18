SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 18
AND c.CreationDate >= 611
AND u.CreationDate >= 145

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;