SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 375
AND u.Views <= 130
AND u.UpVotes >= 67
AND c.CreationDate >= 285
AND c.CreationDate <= 1300
AND u.CreationDate >= 282

AND c.UserId = u.Id
AND ph.UserId = u.Id;