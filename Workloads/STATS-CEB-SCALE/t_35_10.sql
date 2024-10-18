SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 4
AND v.BountyAmount >= 125.0
AND v.BountyAmount <= 350.0
AND u.UpVotes >= 48
AND u.UpVotes <= 174
AND v.CreationDate >= 986

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;