SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score=0
AND v.BountyAmount>=0
AND u.DownVotes<=57
AND v.CreationDate<=1542
AND u.CreationDate>=65
AND u.CreationDate<=1510

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;