SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 7
AND c.CreationDate >= 206
AND u.CreationDate >= 297

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;