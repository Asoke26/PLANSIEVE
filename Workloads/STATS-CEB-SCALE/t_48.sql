SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
badges b,
users u
WHERE c.Score=1
AND p.Score>=-1
AND p.Score<=29
AND v.BountyAmount<=50
AND u.DownVotes<=11
AND p.CreationDate>=27
AND p.CreationDate<=1541
AND b.Date<=1525
AND u.CreationDate>=39
AND u.CreationDate<=1538

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = v.UserId
AND v.UserId = b.UserId;