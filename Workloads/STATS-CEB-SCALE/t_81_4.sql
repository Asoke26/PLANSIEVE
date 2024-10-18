SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 218
AND u.Views <= 206
AND u.UpVotes >= 66
AND c.CreationDate >= 909
AND c.CreationDate <= 1172
AND u.CreationDate >= 329

AND c.UserId = u.Id
AND ph.UserId = u.Id;