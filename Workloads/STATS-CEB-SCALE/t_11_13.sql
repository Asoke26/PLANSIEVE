SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 114
AND u.Reputation <= 1156
AND u.UpVotes <= 24
AND u.CreationDate >= 308
AND u.CreationDate <= 767

AND u.Id = c.UserId
AND c.UserId = ph.UserId;