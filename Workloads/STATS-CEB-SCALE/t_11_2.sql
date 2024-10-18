SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 223
AND u.Reputation <= 2400
AND u.UpVotes <= 292
AND u.CreationDate >= 403
AND u.CreationDate <= 1461

AND u.Id = c.UserId
AND c.UserId = ph.UserId;