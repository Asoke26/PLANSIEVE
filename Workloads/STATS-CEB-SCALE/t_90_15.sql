SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 77
AND u.Reputation >= 1058
AND u.UpVotes <= 267
AND ph.CreationDate >= 926
AND u.CreationDate >= 208

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;