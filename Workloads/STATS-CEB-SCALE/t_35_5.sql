SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 4
AND v.BountyAmount >= 25.0
AND v.BountyAmount <= 100.0
AND u.UpVotes >= 71
AND u.UpVotes <= 323
AND v.CreationDate >= 1465

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;