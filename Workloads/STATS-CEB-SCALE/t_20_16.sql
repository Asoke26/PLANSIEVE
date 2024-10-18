SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.Score >= 64
AND u.UpVotes >= 1273
AND v.CreationDate <= 1125
AND p.CreationDate >= 478
AND p.CreationDate <= 1018
AND u.CreationDate >= 822
AND u.CreationDate <= 1341

AND v.PostId = p.Id
AND v.UserId = u.Id;