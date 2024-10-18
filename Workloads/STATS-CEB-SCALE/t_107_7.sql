SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 6
AND c.CreationDate >= 142
AND u.CreationDate >= 669

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;