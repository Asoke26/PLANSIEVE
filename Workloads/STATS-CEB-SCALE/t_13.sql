SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.BountyAmount<=100
AND u.UpVotes=0
AND c.CreationDate>=101
AND c.CreationDate<=1536
AND u.CreationDate<=1543

AND u.Id = c.UserId
AND u.Id = v.UserId;