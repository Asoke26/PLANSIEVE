SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.BountyAmount <= 400.0
AND u.UpVotes = 328
AND c.CreationDate >= 1266
AND c.CreationDate <= 1309
AND u.CreationDate <= 424

AND u.Id = c.UserId
AND u.Id = v.UserId;