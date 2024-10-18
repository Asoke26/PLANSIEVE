SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 0
AND c.CreationDate >= 888
AND u.CreationDate >= 605

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;