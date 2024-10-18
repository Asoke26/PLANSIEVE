SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 16
AND u.Reputation >= 143
AND u.UpVotes <= 238
AND ph.CreationDate >= 396
AND u.CreationDate >= 905

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;