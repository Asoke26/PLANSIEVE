SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.Score >= 39
AND u.UpVotes >= 444
AND v.CreationDate <= 1524
AND p.CreationDate >= 4
AND p.CreationDate <= 1347
AND u.CreationDate >= 477
AND u.CreationDate <= 1002

AND v.PostId = p.Id
AND v.UserId = u.Id;