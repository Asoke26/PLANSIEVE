SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.BountyAmount <= 125.0
AND u.UpVotes = 1408
AND c.CreationDate >= 670
AND c.CreationDate <= 1050
AND u.CreationDate <= 769

AND u.Id = c.UserId
AND u.Id = v.UserId;