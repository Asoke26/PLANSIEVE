SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 8
AND c.CreationDate >= 308
AND u.CreationDate >= 245

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;