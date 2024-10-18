SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 67
AND u.Reputation >= 260
AND u.UpVotes <= 629
AND ph.CreationDate >= 556
AND u.CreationDate >= 1242

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;