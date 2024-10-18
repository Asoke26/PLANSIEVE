SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE c.CreationDate >= 1029
AND c.CreationDate <= 1181
AND v.CreationDate >= 70
AND v.CreationDate <= 707
AND u.CreationDate <= 1081

AND u.Id = c.UserId
AND u.Id = v.UserId;