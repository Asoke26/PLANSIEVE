SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 7
AND c.CreationDate >= 1387
AND u.CreationDate >= 813

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;