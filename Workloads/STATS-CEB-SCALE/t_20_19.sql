SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.Score >= 7
AND u.UpVotes >= 366
AND v.CreationDate <= 1296
AND p.CreationDate >= 949
AND p.CreationDate <= 1433
AND u.CreationDate >= 1027
AND u.CreationDate <= 1310

AND v.PostId = p.Id
AND v.UserId = u.Id;