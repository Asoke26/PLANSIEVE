SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.Score >= 8
AND u.UpVotes >= 477
AND v.CreationDate <= 1365
AND p.CreationDate >= 847
AND p.CreationDate <= 1523
AND u.CreationDate >= 45
AND u.CreationDate <= 1168

AND v.PostId = p.Id
AND v.UserId = u.Id;