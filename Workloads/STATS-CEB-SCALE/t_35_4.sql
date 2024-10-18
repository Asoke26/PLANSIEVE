SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 6
AND v.BountyAmount >= 150.0
AND v.BountyAmount <= 250.0
AND u.UpVotes >= 108
AND u.UpVotes <= 602
AND v.CreationDate >= 1165

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;