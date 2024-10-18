SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 705
AND u.Views <= 122
AND u.UpVotes >= 428
AND c.CreationDate >= 400
AND c.CreationDate <= 1219
AND u.CreationDate >= 1130

AND c.UserId = u.Id
AND ph.UserId = u.Id;