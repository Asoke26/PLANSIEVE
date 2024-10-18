SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 14
AND u.Reputation >= 123
AND u.UpVotes <= 225
AND ph.CreationDate >= 952
AND u.CreationDate >= 1205

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;