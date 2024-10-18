SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 5
AND c.CreationDate >= 936
AND u.CreationDate >= 1331

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;