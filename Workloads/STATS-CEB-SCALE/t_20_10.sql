SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.Score >= 121
AND u.UpVotes >= 345
AND v.CreationDate <= 739
AND p.CreationDate >= 66
AND p.CreationDate <= 348
AND u.CreationDate >= 353
AND u.CreationDate <= 793

AND v.PostId = p.Id
AND v.UserId = u.Id;