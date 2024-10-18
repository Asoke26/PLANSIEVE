SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 15
AND v.BountyAmount >= 0.0
AND u.DownVotes <= 37
AND v.CreationDate <= 352
AND u.CreationDate >= 103
AND u.CreationDate <= 169

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;