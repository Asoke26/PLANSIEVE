SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.PostTypeId = 1
AND u.Views >= 6
AND p.CreationDate <= 200

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;