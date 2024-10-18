SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 443
AND u.Views <= 611
AND u.UpVotes >= 51
AND c.CreationDate >= 56
AND c.CreationDate <= 1279
AND u.CreationDate >= 445

AND c.UserId = u.Id
AND ph.UserId = u.Id;