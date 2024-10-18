SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.BountyAmount <= 75.0
AND u.UpVotes = 21
AND c.CreationDate >= 965
AND c.CreationDate <= 1389
AND u.CreationDate <= 262

AND u.Id = c.UserId
AND u.Id = v.UserId;