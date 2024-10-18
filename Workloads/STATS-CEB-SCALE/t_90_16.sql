SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 106
AND u.Reputation >= 343
AND u.UpVotes <= 16
AND ph.CreationDate >= 1277
AND u.CreationDate >= 891

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;