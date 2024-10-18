SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE c.CreationDate >= 129
AND c.CreationDate <= 415
AND v.CreationDate >= 1097
AND v.CreationDate <= 1353
AND u.CreationDate <= 630

AND u.Id = c.UserId
AND u.Id = v.UserId;