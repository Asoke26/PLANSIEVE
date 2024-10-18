SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.PostTypeId = 5
AND u.Views >= 2722
AND p.CreationDate <= 816

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;