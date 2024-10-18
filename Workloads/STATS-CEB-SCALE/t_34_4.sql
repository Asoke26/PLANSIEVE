SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 13
AND v.BountyAmount >= 125.0
AND u.DownVotes <= 88
AND v.CreationDate <= 1415
AND u.CreationDate >= 38
AND u.CreationDate <= 150

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;