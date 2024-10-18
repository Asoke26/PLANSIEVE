SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 213
AND u.Reputation <= 1443
AND u.UpVotes <= 228
AND u.CreationDate >= 485
AND u.CreationDate <= 1020

AND u.Id = c.UserId
AND c.UserId = ph.UserId;