SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.BountyAmount <= 200.0
AND u.UpVotes = 1547
AND c.CreationDate >= 537
AND c.CreationDate <= 951
AND u.CreationDate <= 1198

AND u.Id = c.UserId
AND u.Id = v.UserId;