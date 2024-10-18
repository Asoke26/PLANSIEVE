SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 149
AND u.Reputation <= 1094
AND u.UpVotes <= 81
AND u.CreationDate >= 802
AND u.CreationDate <= 1383

AND u.Id = c.UserId
AND c.UserId = ph.UserId;