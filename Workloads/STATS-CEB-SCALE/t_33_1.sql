SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 7
AND c.CreationDate >= 568
AND u.CreationDate >= 1075

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;