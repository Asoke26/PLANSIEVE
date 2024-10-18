SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 309
AND u.Reputation <= 1006
AND u.UpVotes <= 42
AND u.CreationDate >= 29
AND u.CreationDate <= 1197

AND u.Id = c.UserId
AND c.UserId = ph.UserId;