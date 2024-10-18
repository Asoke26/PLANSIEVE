SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score=1
AND v.VoteTypeId=5
AND u.Reputation>=1
AND c.CreationDate>=66
AND v.CreationDate>=27
AND v.CreationDate<=1544
AND b.Date<=1519

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;