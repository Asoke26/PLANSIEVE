SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE c.CreationDate >= 502
AND c.CreationDate <= 845
AND v.CreationDate >= 580
AND v.CreationDate <= 1489
AND u.CreationDate <= 850

AND u.Id = c.UserId
AND u.Id = v.UserId;