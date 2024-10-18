SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 8
AND c.CreationDate >= 1257
AND u.CreationDate >= 643

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;