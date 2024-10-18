SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.Score >= -1
AND u.UpVotes >= 404
AND v.CreationDate <= 1327
AND p.CreationDate >= 201
AND p.CreationDate <= 309
AND u.CreationDate >= 83
AND u.CreationDate <= 1038

AND v.PostId = p.Id
AND v.UserId = u.Id;