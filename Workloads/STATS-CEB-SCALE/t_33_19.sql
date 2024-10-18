SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 3
AND c.CreationDate >= 1537
AND u.CreationDate >= 534

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;