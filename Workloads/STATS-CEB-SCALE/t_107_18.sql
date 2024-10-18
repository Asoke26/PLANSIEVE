SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 12
AND c.CreationDate >= 254
AND u.CreationDate >= 113

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;