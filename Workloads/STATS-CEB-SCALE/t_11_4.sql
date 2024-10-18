SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 238
AND u.Reputation <= 478
AND u.UpVotes <= 84
AND u.CreationDate >= 844
AND u.CreationDate <= 854

AND u.Id = c.UserId
AND c.UserId = ph.UserId;