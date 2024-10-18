SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.Score >= 35
AND u.UpVotes >= 12
AND v.CreationDate <= 947
AND p.CreationDate >= 912
AND p.CreationDate <= 1112
AND u.CreationDate >= 137
AND u.CreationDate <= 621

AND v.PostId = p.Id
AND v.UserId = u.Id;