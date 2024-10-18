SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 6
AND c.CreationDate >= 134
AND u.CreationDate >= 609

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;