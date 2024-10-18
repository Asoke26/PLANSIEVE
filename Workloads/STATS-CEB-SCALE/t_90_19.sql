SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 123
AND u.Reputation >= 352
AND u.UpVotes <= 110
AND ph.CreationDate >= 247
AND u.CreationDate >= 429

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;