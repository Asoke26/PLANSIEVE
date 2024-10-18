SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.Score >= 68
AND u.UpVotes >= 608
AND v.CreationDate <= 819
AND p.CreationDate >= 307
AND p.CreationDate <= 477
AND u.CreationDate >= 356
AND u.CreationDate <= 1454

AND v.PostId = p.Id
AND v.UserId = u.Id;