SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 2
AND c.CreationDate >= 1229
AND u.CreationDate >= 32

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;