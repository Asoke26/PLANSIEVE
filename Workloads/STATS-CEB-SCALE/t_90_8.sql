SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 42
AND u.Reputation >= 25
AND u.UpVotes <= 59
AND ph.CreationDate >= 1372
AND u.CreationDate >= 1194

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;