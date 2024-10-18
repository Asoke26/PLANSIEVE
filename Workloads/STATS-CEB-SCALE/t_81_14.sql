SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 363
AND u.Views <= 71
AND u.UpVotes >= 93
AND c.CreationDate >= 122
AND c.CreationDate <= 1437
AND u.CreationDate >= 1182

AND c.UserId = u.Id
AND ph.UserId = u.Id;