SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 10
AND u.Reputation >= 1233
AND u.UpVotes <= 595
AND ph.CreationDate >= 1395
AND u.CreationDate >= 332

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;