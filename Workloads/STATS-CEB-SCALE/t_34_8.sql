SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 4
AND v.BountyAmount >= 75.0
AND u.DownVotes <= 126
AND v.CreationDate <= 1422
AND u.CreationDate >= 963
AND u.CreationDate <= 1134

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;