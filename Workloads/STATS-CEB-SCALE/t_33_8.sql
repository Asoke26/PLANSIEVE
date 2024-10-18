SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 2
AND c.CreationDate >= 349
AND u.CreationDate >= 1300

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;