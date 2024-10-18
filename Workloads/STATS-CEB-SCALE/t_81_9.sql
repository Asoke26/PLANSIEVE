SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 91
AND u.Views <= 1250
AND u.UpVotes >= 139
AND c.CreationDate >= 1215
AND c.CreationDate <= 1351
AND u.CreationDate >= 820

AND c.UserId = u.Id
AND ph.UserId = u.Id;