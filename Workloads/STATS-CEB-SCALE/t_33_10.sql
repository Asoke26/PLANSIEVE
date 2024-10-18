SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 8
AND c.CreationDate >= 457
AND u.CreationDate >= 399

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;