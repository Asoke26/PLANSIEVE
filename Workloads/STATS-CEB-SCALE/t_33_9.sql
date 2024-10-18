SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 4
AND c.CreationDate >= 448
AND u.CreationDate >= 468

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;