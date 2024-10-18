SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 11
AND u.Reputation >= 224
AND u.UpVotes <= 1781
AND ph.CreationDate >= 1460
AND u.CreationDate >= 1377

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;