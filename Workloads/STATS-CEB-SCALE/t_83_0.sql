SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE c.CreationDate >= 114
AND c.CreationDate <= 1535
AND v.CreationDate >= 576
AND v.CreationDate <= 1035
AND u.CreationDate <= 844

AND u.Id = c.UserId
AND u.Id = v.UserId;