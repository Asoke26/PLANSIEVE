SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE c.CreationDate >= 779
AND c.CreationDate <= 1523
AND v.CreationDate >= 830
AND v.CreationDate <= 1110
AND u.CreationDate <= 198

AND u.Id = c.UserId
AND u.Id = v.UserId;