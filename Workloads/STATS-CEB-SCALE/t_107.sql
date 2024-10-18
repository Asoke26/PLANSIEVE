SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score=1
AND c.CreationDate>=28
AND u.CreationDate>=28

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;