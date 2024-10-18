SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.CommentCount >= 10
AND u.CreationDate >= 375

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;