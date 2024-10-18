SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 310
AND u.Views <= 3899
AND u.UpVotes >= 298
AND c.CreationDate >= 840
AND c.CreationDate <= 1402
AND u.CreationDate >= 338

AND c.UserId = u.Id
AND ph.UserId = u.Id;