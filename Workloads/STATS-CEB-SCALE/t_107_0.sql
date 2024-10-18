SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 22
AND c.CreationDate >= 1158
AND u.CreationDate >= 42

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;