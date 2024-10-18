SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 14
AND c.CreationDate >= 243
AND u.CreationDate >= 1132

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;