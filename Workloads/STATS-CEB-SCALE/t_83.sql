SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE c.CreationDate>=35
AND c.CreationDate<=1543
AND v.CreationDate>=27
AND v.CreationDate<=1541
AND u.CreationDate<=1534

AND u.Id = c.UserId
AND u.Id = v.UserId;