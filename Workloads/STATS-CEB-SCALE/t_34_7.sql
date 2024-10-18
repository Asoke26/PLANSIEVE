SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 13
AND v.BountyAmount >= 100.0
AND u.DownVotes <= 82
AND v.CreationDate <= 1327
AND u.CreationDate >= 79
AND u.CreationDate <= 538

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;