SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 0
AND v.VoteTypeId = 5
AND u.Reputation >= 296
AND c.CreationDate >= 425
AND v.CreationDate >= 651
AND v.CreationDate <= 1545
AND b.Date <= 386

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;