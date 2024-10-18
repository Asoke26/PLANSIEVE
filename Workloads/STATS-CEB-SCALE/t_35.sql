SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score=0
AND v.BountyAmount>=0
AND v.BountyAmount<=300
AND u.UpVotes>=0
AND u.UpVotes<=18
AND v.CreationDate>=37

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;