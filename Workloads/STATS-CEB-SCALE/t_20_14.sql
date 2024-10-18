SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.Score >= 17
AND u.UpVotes >= 458
AND v.CreationDate <= 1154
AND p.CreationDate >= 879
AND p.CreationDate <= 1417
AND u.CreationDate >= 706
AND u.CreationDate <= 1375

AND v.PostId = p.Id
AND v.UserId = u.Id;