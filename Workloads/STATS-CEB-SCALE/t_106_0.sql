SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 14
AND v.VoteTypeId = 5
AND u.Reputation >= 413
AND c.CreationDate >= 567
AND v.CreationDate >= 225
AND v.CreationDate <= 524
AND b.Date <= 966

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;