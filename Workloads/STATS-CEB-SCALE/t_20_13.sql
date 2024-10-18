SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.Score >= 31
AND u.UpVotes >= 213
AND v.CreationDate <= 1420
AND p.CreationDate >= 534
AND p.CreationDate <= 1454
AND u.CreationDate >= 1060
AND u.CreationDate <= 1297

AND v.PostId = p.Id
AND v.UserId = u.Id;