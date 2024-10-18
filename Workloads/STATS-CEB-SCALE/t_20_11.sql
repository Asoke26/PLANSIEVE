SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.Score >= 9
AND u.UpVotes >= 186
AND v.CreationDate <= 670
AND p.CreationDate >= 428
AND p.CreationDate <= 895
AND u.CreationDate >= 396
AND u.CreationDate <= 1105

AND v.PostId = p.Id
AND v.UserId = u.Id;