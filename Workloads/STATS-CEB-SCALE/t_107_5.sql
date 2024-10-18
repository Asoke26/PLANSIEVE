SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 12
AND c.CreationDate >= 400
AND u.CreationDate >= 105

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;