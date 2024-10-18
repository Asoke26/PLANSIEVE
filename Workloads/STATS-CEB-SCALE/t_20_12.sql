SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.Score >= 30
AND u.UpVotes >= 123
AND v.CreationDate <= 1387
AND p.CreationDate >= 978
AND p.CreationDate <= 1218
AND u.CreationDate >= 394
AND u.CreationDate <= 989

AND v.PostId = p.Id
AND v.UserId = u.Id;