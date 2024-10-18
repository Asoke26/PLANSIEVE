SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 4
AND v.BountyAmount >= 250.0
AND u.DownVotes <= 12
AND v.CreationDate <= 1347
AND u.CreationDate >= 28
AND u.CreationDate <= 493

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;