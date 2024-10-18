SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 158
AND u.Reputation <= 11520
AND u.UpVotes <= 662
AND u.CreationDate >= 647
AND u.CreationDate <= 1387

AND u.Id = c.UserId
AND c.UserId = ph.UserId;