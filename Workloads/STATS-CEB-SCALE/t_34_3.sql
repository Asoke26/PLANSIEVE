SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 6
AND v.BountyAmount >= 25.0
AND u.DownVotes <= 30
AND v.CreationDate <= 1517
AND u.CreationDate >= 135
AND u.CreationDate <= 150

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;