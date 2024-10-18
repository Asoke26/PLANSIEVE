SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.Score >= 26
AND u.UpVotes >= 94
AND v.CreationDate <= 1271
AND p.CreationDate >= 158
AND p.CreationDate <= 483
AND u.CreationDate >= 616
AND u.CreationDate <= 1468

AND v.PostId = p.Id
AND v.UserId = u.Id;