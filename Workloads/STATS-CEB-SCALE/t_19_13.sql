SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.Reputation >= 869
AND u.Reputation <= 2052
AND u.Views >= 150
AND ph.CreationDate <= 1290
AND p.CreationDate >= 121
AND p.CreationDate <= 881

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;