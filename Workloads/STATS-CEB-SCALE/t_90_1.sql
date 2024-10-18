SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 50
AND u.Reputation >= 404
AND u.UpVotes <= 411
AND ph.CreationDate >= 629
AND u.CreationDate >= 240

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;