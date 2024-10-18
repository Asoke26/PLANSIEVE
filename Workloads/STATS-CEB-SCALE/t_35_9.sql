SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 2
AND v.BountyAmount >= 150.0
AND v.BountyAmount <= 400.0
AND u.UpVotes >= 37
AND u.UpVotes <= 456
AND v.CreationDate >= 841

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;