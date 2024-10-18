SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.BountyAmount <= 150.0
AND u.UpVotes = 28
AND c.CreationDate >= 1298
AND c.CreationDate <= 1523
AND u.CreationDate <= 1222

AND u.Id = c.UserId
AND u.Id = v.UserId;