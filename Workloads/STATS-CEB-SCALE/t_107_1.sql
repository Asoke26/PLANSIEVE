SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 2
AND c.CreationDate >= 269
AND u.CreationDate >= 70

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;