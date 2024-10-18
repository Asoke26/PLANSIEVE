SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 3
AND v.BountyAmount >= 50.0
AND u.DownVotes <= 13
AND v.CreationDate <= 1154
AND u.CreationDate >= 156
AND u.CreationDate <= 249

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;