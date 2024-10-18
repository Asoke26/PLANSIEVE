SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.Score >= 61
AND u.UpVotes >= 223
AND v.CreationDate <= 1256
AND p.CreationDate >= 381
AND p.CreationDate <= 1326
AND u.CreationDate >= 271
AND u.CreationDate <= 478

AND v.PostId = p.Id
AND v.UserId = u.Id;