SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 16
AND c.CreationDate >= 872
AND u.CreationDate >= 151

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;