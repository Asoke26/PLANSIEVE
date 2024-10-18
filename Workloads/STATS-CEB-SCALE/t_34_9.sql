SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 6
AND v.BountyAmount >= 150.0
AND u.DownVotes <= 59
AND v.CreationDate <= 813
AND u.CreationDate >= 297
AND u.CreationDate <= 1061

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;