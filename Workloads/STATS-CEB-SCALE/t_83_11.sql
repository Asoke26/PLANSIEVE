SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE c.CreationDate >= 728
AND c.CreationDate <= 1292
AND v.CreationDate >= 595
AND v.CreationDate <= 1043
AND u.CreationDate <= 949

AND u.Id = c.UserId
AND u.Id = v.UserId;