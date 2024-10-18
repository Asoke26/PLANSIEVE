SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 7
AND c.CreationDate >= 688
AND u.CreationDate >= 225

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;