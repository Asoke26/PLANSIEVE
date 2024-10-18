SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 17
AND c.CreationDate >= 361
AND u.CreationDate >= 439

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;