SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE c.CreationDate >= 616
AND c.CreationDate <= 868
AND v.CreationDate >= 761
AND v.CreationDate <= 906
AND u.CreationDate <= 43

AND u.Id = c.UserId
AND u.Id = v.UserId;