SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 92
AND u.Reputation <= 598
AND u.UpVotes <= 550
AND u.CreationDate >= 377
AND u.CreationDate <= 576

AND u.Id = c.UserId
AND c.UserId = ph.UserId;