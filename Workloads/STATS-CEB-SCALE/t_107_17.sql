SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 2
AND c.CreationDate >= 753
AND u.CreationDate >= 1278

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;