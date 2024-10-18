SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.Score >= 71
AND u.UpVotes >= 99
AND v.CreationDate <= 1292
AND p.CreationDate >= 373
AND p.CreationDate <= 516
AND u.CreationDate >= 526
AND u.CreationDate <= 1093

AND v.PostId = p.Id
AND v.UserId = u.Id;