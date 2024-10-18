SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 8
AND c.CreationDate >= 879
AND u.CreationDate >= 637

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;