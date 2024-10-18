SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 98
AND u.Reputation <= 1239
AND u.UpVotes <= 205
AND u.CreationDate >= 339
AND u.CreationDate <= 1395

AND u.Id = c.UserId
AND c.UserId = ph.UserId;