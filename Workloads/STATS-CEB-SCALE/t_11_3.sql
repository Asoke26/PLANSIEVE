SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 221
AND u.Reputation <= 607
AND u.UpVotes <= 103
AND u.CreationDate >= 600
AND u.CreationDate <= 875

AND u.Id = c.UserId
AND c.UserId = ph.UserId;