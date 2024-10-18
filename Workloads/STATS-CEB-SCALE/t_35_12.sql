SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 6
AND v.BountyAmount >= 125.0
AND v.BountyAmount <= 150.0
AND u.UpVotes >= 119
AND u.UpVotes <= 604
AND v.CreationDate >= 343

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;