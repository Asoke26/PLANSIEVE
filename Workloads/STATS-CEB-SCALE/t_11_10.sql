SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 117
AND u.Reputation <= 275
AND u.UpVotes <= 69
AND u.CreationDate >= 226
AND u.CreationDate <= 1237

AND u.Id = c.UserId
AND c.UserId = ph.UserId;