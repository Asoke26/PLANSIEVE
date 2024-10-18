SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 425
AND u.Reputation <= 2538
AND u.UpVotes <= 23
AND u.CreationDate >= 780
AND u.CreationDate <= 818

AND u.Id = c.UserId
AND c.UserId = ph.UserId;