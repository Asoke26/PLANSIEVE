SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 1
AND c.CreationDate >= 854
AND u.CreationDate >= 942

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;