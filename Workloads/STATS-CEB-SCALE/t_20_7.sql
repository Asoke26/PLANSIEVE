SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.Score >= -6
AND u.UpVotes >= 135
AND v.CreationDate <= 1297
AND p.CreationDate >= 166
AND p.CreationDate <= 631
AND u.CreationDate >= 300
AND u.CreationDate <= 1472

AND v.PostId = p.Id
AND v.UserId = u.Id;