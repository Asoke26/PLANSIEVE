SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.BountyAmount <= 250.0
AND u.UpVotes = 109
AND c.CreationDate >= 82
AND c.CreationDate <= 877
AND u.CreationDate <= 1016

AND u.Id = c.UserId
AND u.Id = v.UserId;