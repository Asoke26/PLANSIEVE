SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE 

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;