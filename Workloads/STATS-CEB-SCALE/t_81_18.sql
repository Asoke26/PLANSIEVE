SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 535
AND u.Views <= 298
AND u.UpVotes >= 57
AND c.CreationDate >= 368
AND c.CreationDate <= 757
AND u.CreationDate >= 474

AND c.UserId = u.Id
AND ph.UserId = u.Id;