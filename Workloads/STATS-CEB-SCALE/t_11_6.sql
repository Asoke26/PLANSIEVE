SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 266
AND u.Reputation <= 409
AND u.UpVotes <= 1437
AND u.CreationDate >= 121
AND u.CreationDate <= 163

AND u.Id = c.UserId
AND c.UserId = ph.UserId;