SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 9
AND c.CreationDate >= 655
AND u.CreationDate >= 349

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;