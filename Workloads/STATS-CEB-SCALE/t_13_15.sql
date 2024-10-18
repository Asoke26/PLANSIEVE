SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.BountyAmount <= 200.0
AND u.UpVotes = 65
AND c.CreationDate >= 612
AND c.CreationDate <= 899
AND u.CreationDate <= 1266

AND u.Id = c.UserId
AND u.Id = v.UserId;