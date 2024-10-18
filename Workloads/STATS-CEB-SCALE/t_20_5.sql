SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.Score >= 25
AND u.UpVotes >= 8
AND v.CreationDate <= 1491
AND p.CreationDate >= 494
AND p.CreationDate <= 866
AND u.CreationDate >= 735
AND u.CreationDate <= 891

AND v.PostId = p.Id
AND v.UserId = u.Id;