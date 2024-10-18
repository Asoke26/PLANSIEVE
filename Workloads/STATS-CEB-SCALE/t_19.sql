SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.Reputation>=1
AND u.Reputation<=6524
AND u.Views>=0
AND ph.CreationDate<=1517
AND p.CreationDate>=34
AND p.CreationDate<=1522

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;