SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score>=0
AND u.Reputation>=1
AND u.UpVotes<=198
AND ph.CreationDate>=60
AND u.CreationDate>=27

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;