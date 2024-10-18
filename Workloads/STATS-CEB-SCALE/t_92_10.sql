SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.PostTypeId = 5
AND u.Views >= 198
AND p.CreationDate <= 424

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;