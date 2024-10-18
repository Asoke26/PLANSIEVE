SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 247
AND u.Views <= 430
AND u.UpVotes >= 21
AND c.CreationDate >= 1182
AND c.CreationDate <= 1466
AND u.CreationDate >= 345

AND c.UserId = u.Id
AND ph.UserId = u.Id;