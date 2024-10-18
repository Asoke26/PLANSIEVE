SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 3
AND c.CreationDate >= 402
AND u.CreationDate >= 1280

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;