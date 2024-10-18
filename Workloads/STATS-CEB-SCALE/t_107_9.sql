SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 1
AND c.CreationDate >= 383
AND u.CreationDate >= 1152

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;