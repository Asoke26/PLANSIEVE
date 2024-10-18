SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 102
AND u.Reputation >= 377
AND u.UpVotes <= 339
AND ph.CreationDate >= 1203
AND u.CreationDate >= 745

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;