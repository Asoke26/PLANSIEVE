SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE c.CreationDate >= 281
AND c.CreationDate <= 1194
AND v.CreationDate >= 688
AND v.CreationDate <= 1479
AND u.CreationDate <= 564

AND u.Id = c.UserId
AND u.Id = v.UserId;