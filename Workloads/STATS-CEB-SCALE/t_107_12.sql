SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 3
AND c.CreationDate >= 1247
AND u.CreationDate >= 445

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;