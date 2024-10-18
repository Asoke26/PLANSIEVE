SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.BountyAmount <= 200.0
AND u.UpVotes = 2122
AND c.CreationDate >= 390
AND c.CreationDate <= 1221
AND u.CreationDate <= 1477

AND u.Id = c.UserId
AND u.Id = v.UserId;