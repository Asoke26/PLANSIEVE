SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 26
AND c.CreationDate >= 140
AND u.CreationDate >= 346

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;