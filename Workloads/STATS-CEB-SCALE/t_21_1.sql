SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE 

AND v.UserId = p.OwnerUserId
AND p.OwnerUserId = u.Id;