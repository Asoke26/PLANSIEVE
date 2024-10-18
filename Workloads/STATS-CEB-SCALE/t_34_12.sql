SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 8
AND v.BountyAmount >= 75.0
AND u.DownVotes <= 22
AND v.CreationDate <= 864
AND u.CreationDate >= 301
AND u.CreationDate <= 772

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;