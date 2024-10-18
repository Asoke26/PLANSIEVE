SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 30
AND u.CreationDate >= 879

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;