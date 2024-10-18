SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.Score>=-1
AND u.UpVotes>=0
AND v.CreationDate<=1543
AND p.CreationDate>=121
AND p.CreationDate<=1540
AND u.CreationDate>=35
AND u.CreationDate<=1534

AND v.PostId = p.Id
AND v.UserId = u.Id;