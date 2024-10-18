SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.Score >= 60
AND u.UpVotes >= 489
AND v.CreationDate <= 688
AND p.CreationDate >= 169
AND p.CreationDate <= 418
AND u.CreationDate >= 121
AND u.CreationDate <= 918

AND v.PostId = p.Id
AND v.UserId = u.Id;