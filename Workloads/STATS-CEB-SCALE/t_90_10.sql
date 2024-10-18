SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 60
AND u.Reputation >= 2182
AND u.UpVotes <= 489
AND ph.CreationDate >= 586
AND u.CreationDate >= 508

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;