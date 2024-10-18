SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.Score >= 0
AND u.UpVotes >= 733
AND v.CreationDate <= 1390
AND p.CreationDate >= 1190
AND p.CreationDate <= 1265
AND u.CreationDate >= 265
AND u.CreationDate <= 723

AND v.PostId = p.Id
AND v.UserId = u.Id;