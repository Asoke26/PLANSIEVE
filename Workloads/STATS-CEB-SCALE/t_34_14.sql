SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 4
AND v.BountyAmount >= 125.0
AND u.DownVotes <= 351
AND v.CreationDate <= 847
AND u.CreationDate >= 165
AND u.CreationDate <= 1277

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;