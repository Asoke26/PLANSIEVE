SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 40
AND c.CreationDate >= 476
AND u.CreationDate >= 866

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;