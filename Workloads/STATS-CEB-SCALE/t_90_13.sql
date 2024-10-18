SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 85
AND u.Reputation >= 252
AND u.UpVotes <= 131
AND ph.CreationDate >= 483
AND u.CreationDate >= 248

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;