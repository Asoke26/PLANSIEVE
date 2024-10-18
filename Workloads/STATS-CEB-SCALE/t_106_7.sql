SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 11
AND v.VoteTypeId = 5
AND u.Reputation >= 1469
AND c.CreationDate >= 837
AND v.CreationDate >= 855
AND v.CreationDate <= 1328
AND b.Date <= 1145

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;