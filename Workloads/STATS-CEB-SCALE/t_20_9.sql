SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.Score >= 32
AND u.UpVotes >= 72
AND v.CreationDate <= 888
AND p.CreationDate >= 719
AND p.CreationDate <= 1446
AND u.CreationDate >= 298
AND u.CreationDate <= 1041

AND v.PostId = p.Id
AND v.UserId = u.Id;