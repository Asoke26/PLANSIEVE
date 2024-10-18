SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 128
AND u.Views <= 1471
AND u.UpVotes >= 52
AND c.CreationDate >= 1091
AND c.CreationDate <= 1208
AND u.CreationDate >= 985

AND c.UserId = u.Id
AND ph.UserId = u.Id;