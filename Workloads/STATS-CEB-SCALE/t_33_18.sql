SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 6
AND c.CreationDate >= 1141
AND u.CreationDate >= 946

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;