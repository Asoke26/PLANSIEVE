SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= -7
AND u.Reputation >= 308
AND u.UpVotes <= 105
AND ph.CreationDate >= 353
AND u.CreationDate >= 474

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;